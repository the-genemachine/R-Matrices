# -----------------------------------------------------------------------------
# R Script Dividing-Matrices.R
# Author: Gene Gallant
# Date: October 18th, 2023
# Description: A script to demonstrate matrix division in R
# -----------------------------------------------------------------------------

print_heading <- function(heading) {
  yellow_start <- "\033[1;33m"
  reset <- "\033[0m"
  cat(yellow_start, "\n", heading, reset, "\n\n")
}

display_title <- function(title) {
  red_start <- "\033[1;31m"
  red_end <- "\033[0m"
  
  border_length <- nchar(title) + 6  
  double_border <- paste0(rep("=", border_length), collapse = "")
  
  cat(red_start, double_border, red_end, "\n")
  cat(red_start, "= ", title, " =", red_end, "\n")
  cat(red_start, double_border, red_end, "\n\n")
}

# 1. Clear the console
cat("\033c")

##########################################################
# Dividing two 3 x 3 matrices of specific numbers #
##########################################################

display_title("Dividing Matrices")

cat("\n")

print_heading("Dividing two 3 x 3 matrices using matrix inversion")
cat("Matrix 1\n\n")
matrix1 <- matrix(c(9, 15, 21, 30, 36, 42, 50, 55, 60), nrow = 3)
print(matrix1)

cat("\n")

cat("Matrix 2 (Invertible)\n\n")
matrix2 <- matrix(c(5, 10, 1, 25, 30, 3, 45, 50, 4), nrow = 3)  # This matrix should be invertible for the example to work
print(matrix2)

cat("\n")

cat("Matrix 3 : Matrix 1 divided by Matrix 2\n\n")
matrix3 <- matrix1 %*% solve(matrix2)  # Division through multiplication with the inverse
print(matrix3)

cat("\n")

################################################################
# Dividing two 2 x 2 matrices with random invertible numbers #
################################################################

print_heading("Dividing two 2 x 2 matrices with random invertible numbers")

cat("Matrix 4\n\n")
matrix4 <- matrix(c(5, 10, 3, 4), nrow = 2)
print(matrix4)

cat("\n")

cat("Matrix 5\n\n")
matrix5 <- matrix(c(8, 2, 1, 6), nrow = 2)  # This matrix should be invertible for the example to work
print(matrix5)

cat("\n")

cat("Matrix 6 : Matrix 4 divided by Matrix 5\n\n")
matrix6 <- matrix4 %*% solve(matrix5)  # Division through multiplication with the inverse
print(matrix6)

cat("\n")

# 9. End of script message with timestamp

display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
