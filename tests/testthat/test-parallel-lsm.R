#' @include helper.R
#' @noRd
NULL

test_that('parallel.lsm() works with splits on multiple rasters on simple metrics', {
  expect_s3_class(
    parallel.lsm_c_ai(
      landscape = landscapes_2_diff,
      split_on = 'landscape'
    ),
  class = 'data.frame')

  expect_s3_class(
    parallel.lsm(
      func = landscapemetrics::lsm_c_ai,
      landscape = landscapes_2_diff,
      split_on = 'landscape'
    ),
  class = 'data.frame')
})

test_that('parallel.lsm() works with splits on raster inputs with metrics that use multiple arguments', {
  result <- parallel.lsm_c_ca(
    landscape = landscapes_2_diff,
    split_on = 'landscape',
    directions = 4
  )
  testthat::expect_s3_class(result, class = 'data.frame')
})

test_that('parallel.lsm() works with splits on variables other than raster inputs', {
  result <- parallel.lsm_c_ca(
    landscape = landscapemetrics::augusta_nlcd,
    split_on = 'directions',
    directions = c(4,8)
  )
  testthat::expect_s3_class(result, class = 'data.frame')
})

test_that('parallel.lsm() returns expected result when `join_tbl = FALSE`', {
  result <- parallel.lsm_c_ai(
    landscape = landscapes_2_diff,
    split_on = 'landscape',
    join_tbl = FALSE
  )

  for (i in result) {
    expect_s3_class(i, class = 'data.frame')
  }
})

test_that('parallel.lsm() works with multiple split arguments', {
  result <- parallel.lsm_c_ca(
    landscape = landscapes_2_diff,
    split_on = c('landscape', 'directions'),
    directions = c(4,8)
  )
  testthat::expect_s3_class(result, class = 'data.frame')
})

test_that('parallel.lsm() errors when given a function not from landscapemetrics', {
  expect_error(
    result <- parallel.lsm(
      func = base::sum,
      a = 1,
      b = 2
    )
  )
})
