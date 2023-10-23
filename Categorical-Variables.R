# -----------------------------------------------------------------------------
# R Script Categorical-Variables.R
# Author: Gene Gallant
# Date: October 18th, 2023
# Description: A script to demonstrate nominal and ordinal variables in R
# -----------------------------------------------------------------------------

# Clear the console
cat("\033c")

# Functions to help with formatting and interaction
print_heading <- function(heading) {
  yellow_start <- "\033[1;33m"
  reset <- "\033[0m"
  cat(yellow_start, "\n", heading, reset, "\n\n")
}

highlight_yellow <- function(text) {
  yellow_start <- "\033[1;33m"
  reset <- "\033[0m"
  cat(yellow_start, text, reset, "\n\n")
}

pause <- function() {
  readline("Press [Enter] to continue...")
}

# Nominal Examples
print_heading("Nominal Variable Examples")

# Example 1
highlight_yellow("Example 1: Fruit Types")
fruit <- factor(c("apple", "banana", "cherry", "apple", "banana"))
print(fruit)

# Example 2
highlight_yellow("Example 2: Animal Types")
animal <- factor(c("cat", "dog", "bird", "fish", "dog"))
print(animal)

# Example 3
highlight_yellow("Example 3: Car Brands")
car <- factor(c("Toyota", "Honda", "Ford", "Tesla", "Toyota"))
print(car)

# Example 4
highlight_yellow("Example 4: Countries")
country <- factor(c("USA", "Canada", "UK", "Australia", "Canada"))
print(country)

# Example 5
highlight_yellow("Example 5: Colors")
color <- factor(c("red", "blue", "green", "yellow", "red"))
print(color)

pause()

# Ordinal Examples
print_heading("Ordinal Variable Examples")

# Example 6
highlight_yellow("Example 6: Education Levels")
education_levels <- c("high school", "bachelor's", "master's")
education <- factor(c("bachelor's", "high school", "master's", "bachelor's", "master's"), ordered = TRUE, levels = education_levels)
print(education)

# Example 7
highlight_yellow("Example 7: Satisfaction Ratings")
ratings_levels <- c("very unsatisfied", "unsatisfied", "neutral", "satisfied", "very satisfied")
ratings <- factor(c("neutral", "very satisfied", "unsatisfied", "satisfied", "neutral"), ordered = TRUE, levels = ratings_levels)
print(ratings)

# Example 8
highlight_yellow("Example 8: T-shirt Sizes")
sizes_levels <- c("S", "M", "L", "XL")
sizes <- factor(c("M", "S", "L", "XL", "L"), ordered = TRUE, levels = sizes_levels)
print(sizes)

# Example 9
highlight_yellow("Example 9: Movie Ratings")
movie_levels <- c("poor", "fair", "good", "excellent")
movie_rating <- factor(c("good", "excellent", "fair", "good", "excellent"), ordered = TRUE, levels = movie_levels)
print(movie_rating)

# Example 10
highlight_yellow("Example 10: Job Seniority")
job_levels <- c("junior", "mid", "senior", "executive")
job <- factor(c("mid", "executive", "junior", "senior", "executive"), ordered = TRUE, levels = job_levels)
print(job)

# End of Script
