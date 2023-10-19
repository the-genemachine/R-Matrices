# -----------------------------------------------------------------------------
# R Script Adding-Matrices.R
# Author: Gene Gallant
# Date: October 17th, 2023
# Description: A script to demonstrate adding matrices in R
# -----------------------------------------------------------------------------

# 1. Clear the console
cat("\033c")

print_heading <- function(heading) {

 yellow_start <- "\033[1;33m"
reset <- "\033[0m"
cat(yellow_start, "\n", heading, reset, "\n\n")

}

display_title <- function(title) {
  # ANSI escape code for bright red text
  red_start <- "\033[1;31m"
  # ANSI escape code to reset color
  red_end <- "\033[0m"
  
  # Compute the border length without considering the ANSI escape codes
  border_length <- nchar(title) + 6  # Add 4 for spacing
  double_border <- paste0(rep("=", border_length), collapse = "")
  
  # Print the borders and title
  cat(red_start, double_border, red_end, "\n")
  cat(red_start, "= ", title, " =", red_end, "\n")
  cat(red_start, double_border, red_end, "\n\n")
}

##################################################################
# build and add two 5 x 5 matrix of random of sequential numbers #
##################################################################

display_title("Adding Matrices")

cat("\n")

print_heading("Adding two 5 x 5 matrices with + operator")
cat("Matrix 1\n\n")
matrix1 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(matrix1)

cat("\n")

cat("Matrix 2\n\n")
matrix2 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(matrix2)

cat("\n")

cat("Matrix 3 : Matrix 1 + Matrix 2\n\n")
matrix3 <- matrix1 + matrix2
print(matrix3)

cat("\n")

#################################################
# Adding two 4 x 4 matrices with random numbers #
#################################################

print_heading("Adding two 4 x 4 matrices with random numbers")

cat("Matrix 1\n\n")
matrix4 <- matrix(sample(1:50, 16), nrow = 4, ncol = 4)
print(matrix4)

cat("\n")

cat("Matrix 2\n\n")
matrix5 <- matrix(sample(51:100, 16), nrow = 4, ncol = 4)
print(matrix5)

cat("\n")

cat("Matrix 6 : Matrix 4 + Matrix 5\n\n")
matrix6 <- matrix4 + matrix5
print(matrix6)

cat("\n")

###################################################
# Adding two 3 x 3 matrices with specific numbers #
###################################################

print_heading("Adding two 3 x 3 matrices with specific numbers")

cat("Matrix 7\n\n")
matrix7 <- matrix(c(9, 15, 21, 30, 36, 42, 50, 55, 60), nrow = 3)
print(matrix7)

cat("\n")

cat("Matrix 8\n\n")
matrix8 <- matrix(c(5, 10, 20, 25, 30, 35, 45, 50, 55), nrow = 3)
print(matrix8)

cat("\n")

cat("Matrix 9 : Matrix 7 + Matrix 8\n\n")
matrix9 <- matrix7 + matrix8
print(matrix9)

cat("\n")

#################################################################
# Adding two 3 x 3 matrices with column-wise sequential numbers #
#################################################################

print_heading("Adding two 3 x 3 matrices with column-wise sequential numbers")

cat("Matrix 10\n\n")
matrix10 <- matrix(1:9, nrow = 3, byrow = FALSE)
print(matrix10)

cat("\n")

cat("Matrix 11\n\n")
matrix11 <- matrix(10:18, nrow = 3, byrow = FALSE)
print(matrix11)

cat("\n")

cat("Matrix 12 : Matrix 10 + Matrix 11\n\n")
matrix12 <- matrix10 + matrix11
print(matrix12)

cat("\n")

# 9. End of script message with timestamp

display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
