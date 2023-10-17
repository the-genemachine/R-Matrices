# -----------------------------------------------------------------------------
# R Script Boilerplate
# Author: Gene Gallant
# Date: October 14th, 2023
# Description: A template for R scripts
# -----------------------------------------------------------------------------

# 1. Clear the console
cat("\033c")

# 2. Set options for better debugging and reproducibility
options(stringsAsFactors = FALSE)  # avoid strings being converted to factors
options(error = recover)           # provides menu to jump to error location

# 3. Set working directory (if required)
# setwd("/path/to/your/directory")

# 4. Load required libraries/packages

display_title <- function(title) {
  border_length <- nchar(title) + 4  # Add 4 for spacing
  double_border <- paste0(rep("=", border_length), collapse = "")
  cat(double_border, "\n")
  cat("= ", title, " =\n", sep = "")
  cat(double_border, "\n\n")
}

print_heading <- function(heading) {

 yellow_start <- "\033[1;33m"
reset <- "\033[0m"
cat(yellow_start, "\n", "==========", heading, "==========", reset, "\n\n")

}

# 6. Main code

display_title("Sequential Vector to Matrix Operations")

# Create a vector of numbers from 1 to 10
print_heading("Create a vector of numbers from 1 to 10")
numbers <- 1:10
print(numbers)

cat("\n")

# Create a matrix from the vector numbers
print_heading("Create a matrix from the vector numbers")
matrix_from_vector <- matrix(numbers) # 10 rows, 1 column
print(matrix_from_vector)

cat("\n")

# Create a matrix from the vector numbers with 2 columns
print_heading("Create a matrix from the vector numbers with 2 columns")
matrix_from_vector_2 <- matrix(numbers, ncol = 2) # 5 rows, 2 columns
print(matrix_from_vector_2)

cat("\n")

# Create a matrix from the vector numbers with 2 rows
print_heading("Create a matrix from the vector numbers with 2 rows")
matrix_from_vector_2_rows <- matrix(numbers, nrow = 2) # 2 rows, 5 columns
print(matrix_from_vector_2_rows)

cat("\n")

# Create a matrix from the vector numbers with 2 rows and 5 columns using byrow = TRUE
print_heading("Create a matrix from the vector numbers with 2 rows and 5 columns using byrow = TRUE")
matrix_from_vector_2_rows_byrow <- matrix(numbers, nrow = 2, byrow = TRUE) # 2 rows, 5 columns
print(matrix_from_vector_2_rows_byrow)

cat("\n")

# Create a matrix from the vector numbers with 2 rows and 5 columns using byrow = FALSE
print_heading("Create a matrix from the vector numbers with 2 rows and 5 columns using byrow = FALSE")
matrix_from_vector_2_rows_byrow_false <- matrix(numbers, nrow = 2, byrow = FALSE) # 5 rows, 2 columns
print(matrix_from_vector_2_rows_byrow_false)

cat("\n")

# create 2 vectors with 5 stock prices
stock_prices_google <- c(450, 375, 400, 425, 500)
stock_prices_apple <- c(150, 175, 200, 225, 250)
stock_prices_microsoft <- c(100, 125, 150, 175, 200)
stock_prices_amazon <- c(200, 225, 250, 275, 300)
stock_prices_facebook <- c(50, 75, 100, 125, 150)

# combine the 2 vectors into a matrix called stocks
print_heading("Combine the 2 vectors into a matrix called stocks")
stocks <- cbind(stock_prices_google, stock_prices_apple)
print(stocks)

cat("\n")

# combine the 2 vectors into a matrix called stocks using rbind
print_heading("Combine the 2 vectors into a matrix called stocks using rbind")
stocks_rbind <- rbind(stock_prices_google, stock_prices_apple)
print(stocks_rbind)

cat("\n")

# Assuming the print_heading function is already defined
print_heading("Create a matrix from the stocks using matrix()")

# I'm using dummy values here, but you should replace them with actual stock prices
stock_prices_google <- c(100, 101, 102, 103, 104)
stock_prices_apple <- c(150, 151, 152, 153, 154)
stock_prices_microsoft <- c(200, 201, 202, 203, 204)
stock_prices_amazon <- c(250, 251, 252, 253, 254)
stock_prices_facebook <- c(300, 301, 302, 303, 304)

stocks_vector <- c(stock_prices_google, stock_prices_apple, stock_prices_microsoft, 
                   stock_prices_amazon, stock_prices_facebook)

stock_matrix <- matrix(stocks_vector, byrow = TRUE, nrow = 5)

# Create a vector called days with 5 days of the week
days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
# Create a vector called stock_names with 5 stock names
stock_names <- c("Google", "Apple", "Microsoft", "Amazon", "Facebook")

colnames(stock_matrix) = days
rownames(stock_matrix) = stock_names

print(stock_matrix)

cat("\n")

# 8. End of script message
display_title("End of script")