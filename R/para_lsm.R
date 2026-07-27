
#Function to Run LSM function w/ Unpacked Local Rast/Vect
future_apply_lsm <- function(func, args, split_args, split_args_names) {
  #Add Names Back to Split Args
  names(split_args) <- split_args_names

  #Unpack terra Objects
  for (arg in names(args)) {
    if (inherits(args[[arg]], c('PackedSpatRaster', 'PackedSpatVector'))) {
      #args[[arg]] <- terra::rast(args[[arg]])
      args[[arg]] <- terra::unwrap(args[[arg]])
    }
  }

  for (arg in names(split_args)) {
    if (inherits(split_args[[arg]][[1]], c('PackedSpatRaster', 'PackedSpatVector'))) {
      split_args[[arg]][[1]] <- terra::unwrap(split_args[[arg]][[1]])
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
format_args <- function(..., split_on, func) {

  args <- list(...)

  #Validate Inputs
  checkmate::assert_character(split_on)
  checkmate::assert_function(func)
  if (environmentName(environment(func)) != 'landscapemetrics') {stop(paste0(deparse(substitute(func)), '() is not a function in landscapemetrics.'))}
  if (!all(split_on %in% names(args))) {stop('At least one variable specified in `split_on` is not present in the function call.')}


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
  split_args <- lapply(split_args, function(x, names) setNames(x, names), names = split_args_names)
  #return(split_args)

  if (length(args) == 0) {
    args <- NULL
  }

  #Set Plan
  ##Sequential first incase multisession already active/needs cleaned
  future::plan(future::sequential)
  future::plan(future::multisession, workers = workers)
  on.exit(future::plan(future::sequential))

  #Run LSM Function
  result <- do.call(
    future.apply::future_mapply,
    args = list(
      'FUN' = future_apply_lsm, #----------------------------------
      'SIMPLIFY' = FALSE,
      'split_args' = split_args,
      'MoreArgs' = list('args' = args, 'func' = func, 'split_args_names' = split_args_names)
    )
  )

  #Join Together Result
  ## Only done for tibbles
  if (all(sapply(result, is.data.frame))) {
    result <- do.call(dplyr::bind_rows, result)
  }

  return(result)
}

#' Run `landscapemetrics` Functions in Parallel
#'
#' Run `landscapemetrics` functions across multiple processes at the same time.
#' [parallel.lsm()] can be used to call any chosen function. Other parallel functions
#' are functionally identical but with the `func` argument already specified internally.
#'
#' @param ... arguments passed to `func`.
#' @param func function. A function from the [landscapemetrics] package.
#' @param split_on character. Names of arguments in `...` to split between workers.
#' Multiple arguments can be specified. Arguments must be formatted as lists. Each
#' element in the list will be given to a different worker. The number of groups data
#' is split into must be less than or equal to the number of available CPU cores, which
#' can be checked using [parallelly::availableCores()]. It is generally recommended to
#' use n-1 or n-2 cores compared to the total available.
#'
#' @return format varies based on `func`, typically a tibble.
#' @export
parallel.lsm <- function(..., func, split_on) {
  result <- format_args(..., split_on = split_on, func = func)
  return(result)
}
