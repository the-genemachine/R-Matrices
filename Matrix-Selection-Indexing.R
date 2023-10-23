# -----------------------------------------------------------------------------
# R Script Matrix-Selection-Indexing.R
# Author: Gene Gallant
# Date: October 22nd, 2023
# Description: A script to demonstrate matrix selection and indexing in R
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

# Constructing the matrix
matrix1 <- matrix(1:50, nrow = 10, byrow = TRUE)

######################################
# Displaying the matrix
######################################
display_title("Matrix Display")

print(matrix1)

cat("\n")

###########################################
# Indexing and selecting specific entries #
###########################################

display_title("Indexing and Selecting Entries")

# Selecting the value in the 2nd row, 3rd column
cat("Value in 2nd row and 3rd column:\n")
print(matrix1[2,3])

cat("\n")

# Selecting the entire 4th row
cat("Entire 4th row:\n")
print(matrix1[4,])

cat("\n")

# Selecting the entire 5th column
cat("Entire 5th column:\n")
print(matrix1[,5])

cat("\n")

# Selecting a submatrix from rows 2 to 4 and columns 1 to 3
cat("Submatrix from rows 2 to 4 and columns 1 to 3:\n")
print(matrix1[2:4, 1:3])

cat("\n")

# 9. End of script message with timestamp
display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
