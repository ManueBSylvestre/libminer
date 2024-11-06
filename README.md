
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/boshek/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/boshek/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package created as a part of a workshop and not meant for
serious use.

## Installation

You can install the development version of libminer from
[GitHub](https://GitHub.com/) with:

``` r
# install.packages("devtools")
devtools::install_GitHub("ManueBSylvestre/libminer")
```

## Example usage

To get a count of installed packages in each of your library locations,
use the `lib_summary()` function:

``` r
library(libminer)
lib_summary()
#>                                                                             Library
#> 1                                                C:/Program Files/R/R-4.4.1/library
#> 2                        C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> 3 C:/Users/beaudrysylvestrem/AppData/Local/Temp/1/RtmpGKFFNe/temp_libpath868cac658e
#>   n_packages
#> 1         29
#> 2        150
#> 3          1
#>                                                                             Library
#> 1                                                C:/Program Files/R/R-4.4.1/library
#> 2                        C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> 3 C:/Users/beaudrysylvestrem/AppData/Local/Temp/1/RtmpGKFFNe/temp_libpath868cac658e
#>   n_packages
#> 1         29
#> 2        150
#> 3          1
```

and you can also use the `lib` function:

``` r
lib() |> head()
#>             Package
#> libminer   libminer
#> askpass     askpass
#> backports backports
#> base64enc base64enc
#> bit             bit
#> bit64         bit64
#>                                                                                     LibPath
#> libminer  C:/Users/beaudrysylvestrem/AppData/Local/Temp/1/RtmpGKFFNe/temp_libpath868cac658e
#> askpass                          C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> backports                        C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> base64enc                        C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> bit                              C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#> bit64                            C:/Users/beaudrysylvestrem/AppData/Local/R/win-library/4.4
#>              Version Priority
#> libminer  0.0.0.9000     <NA>
#> askpass        1.2.1     <NA>
#> backports      1.5.0     <NA>
#> base64enc      0.1-3     <NA>
#> bit            4.5.0     <NA>
#> bit64          4.5.2     <NA>
#>                                                       Depends      Imports
#> libminer                                                 <NA>   fs,\npurrr
#> askpass                                                  <NA> sys (>= 2.1)
#> backports                                        R (>= 3.0.0)         <NA>
#> base64enc                                        R (>= 2.9.0)         <NA>
#> bit                                              R (>= 3.4.0)         <NA>
#> bit64     R (>= 3.0.1), bit (>= 4.0.0), utils, methods, stats         <NA>
#>           LinkingTo
#> libminer       <NA>
#> askpass        <NA>
#> backports      <NA>
#> base64enc      <NA>
#> bit            <NA>
#> bit64          <NA>
#>                                                                                                               Suggests
#> libminer                                                                       knitr,\nrmarkdown,\ntestthat (>= 3.0.0)
#> askpass                                                                                                       testthat
#> backports                                                                                                         <NA>
#> base64enc                                                                                                         <NA>
#> bit       testthat (>= 0.11.0), roxygen2, knitr, markdown, rmarkdown,\nmicrobenchmark, bit64 (>= 4.0.0), ff (>= 4.0.0)
#> bit64                                                                                                             <NA>
#>           Enhances            License License_is_FOSS License_restricts_use
#> libminer      <NA> MIT + file LICENSE            <NA>                  <NA>
#> askpass       <NA> MIT + file LICENSE            <NA>                  <NA>
#> backports     <NA>      GPL-2 | GPL-3            <NA>                  <NA>
#> base64enc      png      GPL-2 | GPL-3            <NA>                  <NA>
#> bit           <NA>      GPL-2 | GPL-3            <NA>                  <NA>
#> bit64         <NA>      GPL-2 | GPL-3            <NA>                  <NA>
#>           OS_type MD5sum NeedsCompilation Built
#> libminer     <NA>   <NA>             <NA> 4.4.1
#> askpass      <NA>   <NA>              yes 4.4.1
#> backports    <NA>   <NA>              yes 4.4.0
#> base64enc    <NA>   <NA>              yes 4.4.0
#> bit          <NA>   <NA>              yes 4.4.1
#> bit64        <NA>   <NA>              yes 4.4.1
```
