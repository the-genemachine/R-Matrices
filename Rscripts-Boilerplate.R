# -----------------------------------------------------------------------------
# R Script Boilerplate
# Author: [Your Name]
# Date: [Date]
# Description: [Short description of what the script does]
# -----------------------------------------------------------------------------

# 1. Clear the environment and console
rm(list = ls())
cat("\f")

# 2. Set options for better debugging and reproducibility
options(stringsAsFactors = FALSE)  # avoid strings being converted to factors
options(error = recover)           # provides menu to jump to error location

# 3. Set working directory (if required)
# setwd("/path/to/your/directory")

# 4. Load required libraries/packages
# If you don't have these installed, install using install.packages('package_name')
library(tidyverse)  # for data manipulation and visualization

# 5. Custom functions (if any)
example_function <- function(x) {
  # Some code here
  return(x)
}

# 6. Main code
# Load data, perform analysis, etc.
# data <- read.csv("data.csv")

# 7. Save results (if required)
# saveRDS(result, "results.RDS")

# 8. End of script message
message("Script completed!")

# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
