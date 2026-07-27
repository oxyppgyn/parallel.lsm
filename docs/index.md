# *parallel.lsm*

**This package is in early development without testing, but may be fully
functional.**

*parallel.lsm* provides alternative versions of *landscapemetrics*
functions that use parallelization with the goal of reducing processing
time for large rasters or datasets. Parallel processing is not used
within *landscapemetrics* itself, these wrappers are mainly useful when
you must calculate many (or all) metrics across landscapes or a very
large set of sample points (either can be split between CPU cores). If
it doesn’t take an excessive amount of time to run your landscape
calculations or you can’t split your data outside of *landscapemetrics*,
this package unfortunately is not the solution to use.

Parallel processing may be added to the main code of *landscapemetrics*
in the future that makes this package obsolete.

## Functionality

the function
[`parallel.lsm()`](https://oxyppgyn.github.io/parallel.lsm/reference/parallel.lsm.md)
allows wrapping any function from *landscapemetrics* as a parallel
alternative. For convenience, variations of almost every
*landscapemetrics* function exist in the format `parallel.*()`—these are
functionally the same as
[`parallel.lsm()`](https://oxyppgyn.github.io/parallel.lsm/reference/parallel.lsm.md)
without needing to specify a `func` argument.

All functions require splitting data into lists first, then specifying
which argument(s) contain elements that were split (`split_on`
argument). For spatial data, terra provides
[`split()`](https://rdrr.io/r/base/split.html), which can be used to
divide points, polygons, or rasters into roughly equal groups.
`split_on` can be used for multiple arguments if you want to break up a
large set of sampling points and still provide proper plot_id values.
The number of workers/cores to use is determined by how many splits were
made in the dataset.

The cost of starting up parallel processes can outweigh the speed
increase you may obtain. Consider if your dataset is large enough to
offset this when choosing to use *parallel.lsm*.

## How to Install

*parallel.lsm* can be installed from Github using one of the options
below. Note that RTools must be installed for both options.

``` r
#Depricated, use for older R versions
devtools::install_github("oxyppgyn/parallel.lsm")
```

``` r
#Most up-to-date method
pak::pak("oxyppgyn/parallel.lsm")
```

Don’t forget to import after!

``` r
library(parallel.lsm)
```
