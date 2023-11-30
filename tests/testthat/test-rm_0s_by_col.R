library(testthat)
library(SimpleToolsR)  # Assuming this is the name of your package

# Start writing tests
test_that("rm_0s_by_col removes columns with all 0s", {
  # Create a matrix with random values
  x <- matrix(rpois(100, 0.1), 10, 10)

  # Call your function
  result <- rm_0s_by_col(x)

  # Check if there are no columns with all zeros
  expect_true(all(colSums(result == 0) < nrow(result)))
})
