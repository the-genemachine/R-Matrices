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

# If you don't have these installed, install using install.packages('package_name')
# library(tidyverse)  # for data manipulation and visualization

display_title <- function(title) {
  border_length <- nchar(title) + 4  # Add 4 for spacing
  double_border <- paste0(rep("=", border_length), collapse = "")
  cat(double_border, "\n")
  cat("= ", title, " =\n", sep = "")
  cat(double_border, "\n\n")
}
# 6. Main code
# Load data, perform analysis, etc.
# data <- read.csv("data.csv")
display_title("Data")


# 7. Save results (if required)
# saveRDS(result, "results.RDS")

# 8. End of script message
# message("Script completed!")

# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
