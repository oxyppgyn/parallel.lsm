#SCRIPT TO CREATE ALL parallel.*() VARIATIONS OF FUNCTIONS
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

#Write to File
writeLines(text = paste(funcs, collapse = '\n'), con = "C:/Users/Tanner/Desktop/parallel_lsm/funcs.txt")

#Example format for sample_lsm() function
# parallel.sample_lsm <- function(..., split_on) {
#   result <- format_args(..., split_on = split_on, func = landscapemetrics::sample_lsm)
#   return(result)
# }
