
#Function to Run LSM function w/ Unpacked Local Rast/Vect
future_apply_lsm <- function(func, args, split_args, split_args_names) {
  requireNamespace('terra', quietly = TRUE)

  #Add Names Back to Split Args
  names(split_args) <- split_args_names

  #Unpack terra Objects
  for (arg in names(args)) {
    if (inherits(args[[arg]], c('PackedSpatRaster', 'PackedSpatVector'))) {
      args[[arg]] <- terra::unwrap(args[[arg]])
    }
  }

  for (arg in names(split_args)) {
    if (inherits(split_args[[arg]], c('PackedSpatRaster', 'PackedSpatVector'))) {
      split_args[[arg]] <- terra::unwrap(split_args[[arg]])
    }
  }

  #Run Function
  if (is.null(args)) {
    result <- do.call(func, split_args)
  } else {
    result <- do.call(func, c(args, split_args))
  }

  return(result)
}

#Function to Format Input Args + Run LSM Functions
lsm_format_run <- function(..., func, split_on, join_tbl) {

  args <- list(...)

  #Validate Inputs
  checkmate::assert_character(split_on, null.ok = TRUE)
  checkmate::assert_function(func)
  if (length(args) == 0) {stop('No arguments supplied to `...`.')}
  checkmate::assert_named(args)
  if (environmentName(environment(func)) != 'landscapemetrics') {stop(paste0(deparse(substitute(func)), '() is not a function in landscapemetrics.'))}
  if (!all(split_on %in% names(args))) {stop('At least one variable specified in `split_on` is not present in the function call.')}
  checkmate::assert_flag(join_tbl)

  #Set Split Arg. If Not Specified
  if (all(is.null(split_on))) {
    split_on <- names(list(...))[[1]]
  }

  #Seperate Out Split Args
  split_args <- args[names(args) %in% split_on]
  args <- args[!names(args) %in% split_on]

  #Check that Split Args are Correct Length
  if (length(unique(sapply(split_args, length))) != 1) {
    stop('Split arguments are not all the same length.')
  }
  workers <- unique(sapply(split_args, length))[[1]]
  if (workers > parallelly::availableCores()) {stop('Split arguments contain more groups than available CPU cores.')}


  #Wrap terra/raster Variables
  ##Note: does not account for lists of terra objects not in split_on
  for (arg in names(args)) {
    if (inherits(args[[arg]], c('SpatRaster', 'SpatVector'))) {
      args[[arg]] <- terra::wrap(args[[arg]])
    }
  }

  for (arg in names(split_args)) {
    for (val in 1:length(split_args[[arg]])) {
      if (inherits(split_args[[arg]][[val]], c('SpatRaster', 'SpatVector'))) {
        split_args[[arg]][[val]] <- lapply(split_args[[arg]][[val]], terra::wrap)
      }
    }
  }

  #Reformat Split Args
  split_args_names <- names(split_args)
  split_args <- apply(do.call(rbind, split_args), 2, as.list, simplify = FALSE)
  split_args <- lapply(split_args, function(x, names) stats::setNames(x, names), names = split_args_names)

  if (length(args) == 0) {
    args <- NULL
  }

  #Set Plan
  ##Sequential first incase multisession already active/needs cleaned
  future::plan(future::sequential)
  future::plan(future::multisession, workers = workers)
  on.exit(future::plan(future::sequential))

  #Run LSM Function
  result <- suppressWarnings(do.call(
    future.apply::future_mapply,
    args = list(
      'FUN' = future_apply_lsm,
      'SIMPLIFY' = FALSE,
      'future.seed' = TRUE,
      'split_args' = split_args,
      'MoreArgs' = list('args' = args, 'func' = func, 'split_args_names' = split_args_names)
    )
  ))

  #Join Together Result
  ## Only done for tibbles
  if (join_tbl && all(sapply(result, is.data.frame))) {
    result <- do.call(dplyr::bind_rows, result)
  }

  return(result)
}

#' Run `landscapemetrics` Functions in Parallel
#'
#' Run `landscapemetrics` functions across multiple workers at the same time (in parallel).
#' [parallel.lsm()] can be used to call any function from `landscapemetrics` as a parallel process.
#' Other parallel functions are functionally identical but with the `func` argument already specified
#' internally. All functions are formatted as: `parallel.*()`.
#'
#' @param ... arguments passed to `func`.
#' @param func function. A function from the [landscapemetrics] package.
#' @param split_on character. Names of arguments in `...` to split between workers.
#' By default, the name of the first argument in `...` is used.
#' Multiple arguments can be specified by using a vector. Arguments specified here
#' should be split into groups (such as by using [base::split()] or [terra::split()])
#' that equal the number of workers you want to use. The number of available workers
#' can be checked using [parallelly::availableCores()]. It is generally recommended to
#' use at most n-1 or n-2 cores compared to the total available.
#' @param join_tbl logical. If the output should be joined into a single table. Outputs
#' are only combined if the result for all workers is a data frame or similar object
#' (i.e., tibble). If `FALSE`, a list with the results for each worker is returned instead.
#'
#' @return format varies based on `func`, typically a tibble.
#' @export
parallel.lsm <- function(..., func, split_on = NULL, join_tbl = TRUE) {
  result <- lsm_format_run(..., func = func, split_on = split_on, join_tbl = join_tbl)
}
