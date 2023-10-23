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
cat("Value in 2nd row and 3rd column: matrix1[2,3] \n")
print(matrix1[2,3])

cat("\n")

# Selecting the entire 4th row
cat("Entire 4th row: \033[1;33mmatrix1[4,]\033[0m \n")
print(matrix1[4,])


cat("\n")

# Selecting the entire 5th column
cat("Entire 5th column: matrix1[,5] \n")
print(matrix1[,5])

cat("\n")

# Selecting a submatrix from rows 2 to 4 and columns 1 to 3
cat("Submatrix from rows 2 to 4 and columns 1 to 3: matrix1[2:4, 1:3] \n")
print(matrix1[2:4, 1:3])

cat("\n")

# Selecting a submatrix from rows 5 to 7 and columns 2 to 4
cat("Submatrix from rows 5 to 7 and columns 2 to 4: matrix1[5:7, 2:4] \n")
print(matrix1[5:7, 2:4])

cat("\n")

# Selecting every second row from the matrix
cat("Every second row from the matrix: matrix1[seq(2, 10, by = 2), ] \n")
print(matrix1[seq(2, 10, by = 2), ])

cat("\n")

# Selecting every third column from the matrix
cat("Every third column from the matrix: matrix1[, seq(1, 5, by = 3)] \n")
print(matrix1[, seq(1, 5, by = 3)])

cat("\n")

# Selecting rows 2, 5, 8 and columns 1, 4
cat("Rows 2, 5, 8 and columns 1, 4: matrix1[c(2,5,8), c(1,4)] \n")
print(matrix1[c(2,5,8), c(1,4)])

cat("\n")

# Selecting a diagonal from the top-left to bottom-right (assuming matrix has at least 5 columns)
cat("Diagonal from top-left to bottom-right for first 5 rows: matrix1[1:5, 1:5][cbind(1:5, 1:5)] \n")
print(matrix1[1:5, 1:5][cbind(1:5, 1:5)])

cat("\n")

# Selecting all elements greater than 40 from the matrix
cat("All elements greater than 40 from the matrix: matrix1[matrix1 > 40] \n")
print(matrix1[matrix1 > 40])

cat("\n")

# Selecting all rows where the first column is even
cat("All rows where the first column is even: matrix1[matrix1[,1] %% 2 == 0, ] \n")
print(matrix1[matrix1[,1] %% 2 == 0, ])


# 9. End of script message with timestamp
display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
