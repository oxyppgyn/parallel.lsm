# Run `landscapemetrics` Functions in Parallel

Run `landscapemetrics` functions across multiple workers at the same
time (in parallel). `parallel.lsm()` can be used to call any function
from `landscapemetrics` as a parallel process. Other parallel functions
are functionally identical but with the `func` argument already
specified internally. All functions are formatted as: `parallel.*()`.

## Usage

``` r
parallel.lsm(..., func, split_on = NULL, join_tbl = TRUE)
```

## Arguments

- ...:

  arguments passed to `func`.

- func:

  function. A function from the
  [landscapemetrics](https://r-spatialecology.github.io/landscapemetrics/reference/landscapemetrics.html)
  package.

- split_on:

  character. Names of arguments in `...` to split between workers. By
  default, the name of the first argument in `...` is used. Multiple
  arguments can be specified by using a vector. Arguments specified here
  should be split into groups (such as by using
  [`base::split()`](https://rdrr.io/r/base/split.html) or
  [`terra::split()`](https://rspatial.github.io/terra/reference/split.html))
  that equal the number of workers you want to use. The number of
  available workers can be checked using
  [`parallelly::availableCores()`](https://parallelly.futureverse.org/reference/availableCores.html).
  It is generally recommended to use at most n-1 or n-2 cores compared
  to the total available.

- join_tbl:

  logical. If the output should be joined into a single table. Outputs
  are only combined if the result for all workers is a data frame or
  similar object (i.e., tibble). If `FALSE`, a list with the results for
  each worker is returned instead.

## Value

format varies based on `func`, typically a tibble.
