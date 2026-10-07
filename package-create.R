################################################################################
#This file is used to build the package and items here are not imported into   #
# the package to users.                                                        #
################################################################################
# ---------- Initial Setup ----------
## ONLY RUN ON FIRST SETUP
#install.packages("devtools")
#install.packages("roxygen2")
#devtools::create("camRa")
#usethis::use_pkgdown()
#usethis::use_readme_rmd()
#usethis::use_gpl_license()
#usethis::use_testthat(3)

# Index Files for Latex
#MANUAL: install MiKTeX, https://miktex.org/download
#Sys.setenv(
# PATH = paste(Sys.getenv("PATH"), "~/MiKTeX/miktex/bin/x64", # replace w/ your path to MiKTex
# sep = .Platform$path.sep)
#)

# ---------- Try Install/Load Package to R Env. ----------
devtools::install()
library(camRa)
remove.packages(camRa)

# ---------- Create Objects ----------
#Create Public Data Object
#usethis::use_data(DATASET_OBJ_HERE)

#Create Private Data Object
#usethis::use_data(DATASET_OBJ_HERE, internal = TRUE, overwrite = TRUE)

#Get System Data (Example)
#system.file('extdata', 'ena24subset_MegaDet_recognition.json', package = "camRa")

# ---------- Make Tests File -----------
#usethis::use_test('lsm-funcs.R')

# ---------- Make Vignette ----------
#usethis::use_vignette("MY-VINGETTE-NAME")

# ---------- Make Documentation PDF -----------
#Documentation PDF
##Rename to prevent multiple copies w/ version change
# devtools::build_manual(path = getwd())
# file.rename(
#   paste0('camRa_', packageDescription(pkg = 'camRa')$Version, '.pdf'),
#   'camRa_documentation.pdf'
# )

# ---------- Load All Package Data ----------
devtools::load_all()

devtools::install()

# ---------- Update Documentation ----------

#Documentation Files
devtools::document()

#Badges
usethis::use_cran_badge()
usethis::use_coverage()
usethis::use_github_action("check-standard")
#README
devtools::build_readme()

#Vignettes
devtools::build_vignettes()

#Run Tests
devtools::test()

#Build Web
##Locally
pkgdown::build_site()

##For GitHub
pkgdown::build_site_github_pages(clean = TRUE)

#Make robots.txt
writeLines(con = 'docs/robots.txt', text = "# Block OpenAI's crawlers
User-agent: GPTBot
Disallow: /

User-agent: ChatGPT-User
Disallow: /

# Block Anthropic's crawler
User-agent: ClaudeBot
Disallow: /

# Block Google's AI training crawler
User-agent: Google-Extended
Disallow: /

# Block Perplexity
User-agent: PerplexityBot
Disallow: /")

#Make ai.txt
writeLines(con = 'docs/ai.txt', text = "User-Agent: *
Training: deny
Inference: deny")

#Delete llms.txt
file.remove('docs/llms.txt')

#Run CMD Check
devtools::check()

#
#parallel.lsm_l_pd(landscape = list(landscapemetrics::augusta_nlcd, landscapemetrics::augusta_nlcd), split_on = 'landscape')

#lsm_l_iji(landscape = list(landscapemetrics::augusta_nlcd, landscapemetrics::augusta_nlcd), split_on = 'landscape')


#Functions/Objects in landscapemetrics to Exclude
#' func_exclude <- c(
#'   'lsm_abbreviations_names', 'landscape', 'augusta_nlcd', 'podlasie_ccilc',
#'   'options_landscapemetrics', 'show_patches', 'show_cores', 'show_correlation',
#'   'show_lsm', 'list_lsm'
#' )
#'
#' #List Everything in Landscapemetrics with Filter
#' funcs <- getNamespaceExports('landscapemetrics')
#' funcs <- funcs[!funcs %in% func_exclude]
#'
#' #Create Functions from Text String
#' for (func in funcs) {
#'   func_text <- paste0("#' @rdname parallel.lsm
#'   #' @export
#'   parallel.", func, " <- function(..., split_on = NULL, join_tbl = TRUE) {
#'     result <- lsm_format_run(..., split_on = split_on, join_tbl = join_tbl, func = landscapemetrics::", func, ")
#'     return(result)
#'   }
#'   ")
#'   eval(parse(text = func_text))
#'
#' }
#'
#' func_format <- function(func) {
#'   func_text <- paste0("#' @rdname parallel.lsm
#'   #' @export
#'   parallel.", func, " <- function(..., split_on = NULL, join_tbl = TRUE) {
#'     result <- lsm_format_run(..., split_on = split_on, join_tbl = join_tbl, func = landscapemetrics::", func, ")
#'     return(result)
#'   }
#'   ")
#'   #eval(parse(text = func_text))
#' }
