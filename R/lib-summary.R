#' Provide Number of R Packages by Library
#'
#' Provide the number of R package by library in
#'  a data.frame

#' @return a data.frame of R packages by library
#' @export

#' @param sizes Should sizes of libraries be calculated. Default is FALSE
#'
#' @examples
#' lib_summary
lib_summary <- function(sizes = FALSE) {
  if(!is.logical(sizes)){
    stop("'Sizes' must be logical (TRUE or FALSE)")
  }

  pkg_df <- lib()
  #pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkg_df[, "LibPath"])
  #pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors=FALSE)

  names(pkg_df) <- c("Library", "n_packages")
  print(pkg_df)

  if(isTRUE(sizes)){
    pkg_df <- calculate_sizes(pkg_df)


    # pkg_df$lib_size <- map_dbl(
    #   pkg_df$Library,
    #   \(x) sum(fs::file_size(fs::dir_ls(x, recurse=TRUE) ) )
    # )
  }
  pkg_df
}


#' Generate a data frame of installed packages

#'

#' @return a data.frame of all packages installed on your system

#' @export
lib <- function() {

  pkgs <- utils::installed.packages()

  as.data.frame(pkgs, stringsAsFactors = FALSE)

}


#' calculate sizes

#'

#' @param df a data.frame

#'

#' @return df with a lib_size column

#' @noRd
calculate_sizes <- function(df) {

  df$lib_size <- map_dbl(

    df$Library,

    \(x) sum(fs::file_size(fs::dir_ls(x, recurse = TRUE)))

  )

  df

}
