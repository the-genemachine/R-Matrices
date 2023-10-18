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


# 6. Main code

display_title("Title")


# 7. Save results (if required)
# saveRDS(result, "results.RDS")

# 8. End of script message
# message("Script completed!")

# 9. End of script message with timestamp
display_title("Script completed!")
# -----------------------------------------------------------------------------
# End of Script
# -----------------------------------------------------------------------------
