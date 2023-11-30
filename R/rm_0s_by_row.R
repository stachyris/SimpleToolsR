#' Remove rows with all 0s in any given matrix
#'
#' This function removes rows from a matrix where all elements are 0.
#'
#' @param mat A numeric matrix.
#' @return A matrix with rows removed if all elements in the row are 0.
#' @export
#' @examples
#' x <- matrix(rpois(100, 0.1), 10, 10)
#' rm_0s_by_row(x)
rm_0s_by_row <- function(mat) {
  mat[rowSums(mat != 0, na.rm = TRUE) > 0, ]
}
