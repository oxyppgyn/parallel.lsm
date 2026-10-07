#' @include parallel-lsm.R
#' @noRd
NULL

#Functions/Objects in landscapemetrics to Exclude
func_exclude <- c(
  'lsm_abbreviations_names', 'landscape', 'augusta_nlcd', 'podlasie_ccilc',
  'options_landscapemetrics', 'show_patches', 'show_cores', 'show_correlation',
  'show_lsm', 'list_lsm'
)

#List Everything in Landscapemetrics with Filter
funcs <- getNamespaceExports('landscapemetrics')
funcs <- funcs[!funcs %in% func_exclude]

#' List Available Parallelized `landscapemetrics` Functions
#'
#' Get a vector with names of functions available in `parallel.lsm`.
#' Functions are created when the package is loaded and will differ based on
#' what version of `landscapemetrics` is used. See [parallel.lsm()]
#' for arguments specific to the parallel versions of these functions.
#'
#' @return A vector.
#' @export
list_parallel.lsm <- function() {
  return(paste0('parallel.', funcs))
}

.onLoad <- function(libname, pkgname) {
  #Get Namespace Env.
  ns <- asNamespace(pkgname)

  #For Each Function, Create it Dynamically
  for (func in funcs) {

    ##Create Local Scope Function
    new_func <- local({
      current_name <- paste0('parallel.', func)
      function(..., split_on = NULL, join_tbl = TRUE) {
        func_ref <- getExportedValue('landscapemetrics', func)
        result <- lsm_format_run(..., split_on = split_on, join_tbl = join_tbl, func = func_ref)
        return(result)
      }
    })

    ##Insert Local Function into Namespace
    assign(paste0('parallel.', func), new_func, envir = ns)

    ##Force Export on The Function
    namespaceExport(ns, paste0('parallel.', func))
  }
}

.onAttach <- function(libname, pkgname) {
  #Print Message to User about Available Functions
  if (interactive()) {
    packageStartupMessage(c(length(funcs), ' parallel functions created at runtime. See list_parallel.lsm() for a list of available functions.'))
  }
}
