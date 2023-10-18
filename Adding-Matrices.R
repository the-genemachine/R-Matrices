# -----------------------------------------------------------------------------
# R Script Boilerplate
# Author: Gene Gallant
# Date: October 14th, 2023
# Description: A template for R scripts
# -----------------------------------------------------------------------------

# 1. Clear the console
cat("\033c")

print_heading <- function(heading) {

 yellow_start <- "\033[1;33m"
reset <- "\033[0m"
cat(yellow_start, "\n", "==========", heading, "==========", reset, "\n\n")

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

print_heading("A two 5 x 5 matrices of sequential numbers")
matrix1 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(matrix1)

cat("\n")

matrix2 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(matrix2)

cat("\n")

matrix3 <- matrix1 + matrix2

# 9. End of script message with timestamp

display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
