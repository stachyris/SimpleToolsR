library(testthat)
library(SimpleToolsR)

# test begin
test_that("rm_0s_by_col removes columns with all 0s", {
  # Create a matrix with random values
  x <- matrix(rpois(100, 0.1), 10, 10)

  # Calling function
  result <- rm_0s_by_col(x)

  # checking results
  expect_true(all(colSums(result == 0) < nrow(result)))
})
