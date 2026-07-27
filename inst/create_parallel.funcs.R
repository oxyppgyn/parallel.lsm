#SCRIPT TO CREATE ALL parallel.*() VARIATIONS OF FUNCTIONS
library(landscapemetrics)

#TXT/R File to Write Functions To
txt_file <- 'C:/path/to/something.txt'

#Functions/Objects to Exclude
exclude <- c(
  'lsm_abbreviations_names', 'landscape', 'augusta_nlcd', 'podlasie_ccilc',
  'options_landscapemetrics', 'show_patches', 'show_cores', 'show_correlation', 'show_lsm'
)

#Function to Concat. The Formatting
f <- function(func) {paste0(
"#' @rdname parallel.lsm
#' @export
parallel.", func, " <- function(..., split_on) {
  result <- format_args(..., split_on = split_on, func = landscapemetrics::", func, ")
  return(result)
}
")}

#List Everything in LSM + Filter
funcs <- ls('package:landscapemetrics')
funcs <- funcs[!funcs %in% exclude]

#Format as Functions
funcs <- lapply(funcs, f)
file_top <- "#' @include para_lsm.R
#' @noRd
NULL
"

funcs <- append(file_top, funcs)

#Write to File
writeLines(text = paste(funcs, collapse = '\n'), con = txt_file)

#Example format for sample_lsm() function
# parallel.sample_lsm <- function(..., split_on) {
#   result <- format_args(..., split_on = split_on, func = landscapemetrics::sample_lsm)
#   return(result)
# }
