#' Provide Number of R Packages by Library
#'

#' Provide the number of R package by library in

#'  a data.frame

#'

#' @return a data.frame of R packages by library

#' @export


#' @examples
#' lib_summary
#'
lib_summary <- function() {
  #what packages are installed in my system in a big messy presentation
  pkgs <- utils::installed.packages()
  #we pull out the libpath
  pkg_tbl <- table(pkgs[, "LibPath"])#table = nb of rows in libpath by unique values in libpaths
  #make a df

  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  #new names
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df #return that package df
}#return fct= convention is to only use this fct when want to return something early in the function (do it consistently)




