#' Remove columns with all 0s in any given matrix
#'
#' This function removes columns from a matrix where all elements are 0.
#'
#' @param mat A numeric matrix.
#' @return A matrix with columns removed if all elements in the column are 0.
#' @export
#' @examples
#' x <- matrix(rpois(100, 0.1), 10, 10)
#' rm_0s_by_col(x)
rm_0s_by_col <- function(mat) {
  mat[, colSums(mat != 0, na.rm = TRUE) > 0]
}
