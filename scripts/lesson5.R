library(tidyverse)

# Your First Plot (Scatter Plot)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Add Labels and Title
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(
    title = "Fuel Efficiency vs Weight",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  )

# Map Variables to Color
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point()

# Change Point Size and Transparency
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(size = 3, alpha = 0.6)

# Bar Chart
ggplot(mtcars, aes(x = factor(cyl))) + 
  geom_bar()

# Line Plot
economy <- tibble(
  year = 2010:2020,
  value = c(50, 52, 54, 53, 55, 58, 60, 62, 61, 63, 65)
)
ggplot(economy, aes(x = year, y = value)) +
  geom_line() +
  geom_point()

# Facets (Small Multiples)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  facet_wrap(~ cyl)

# A Real Mini-Project Plot
summary # from exercise 4
ggplot(summary, aes(x = reorder(name, avg_score), y = avg_score)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Average Score by Student",
    x = "Student",
    y = "Average Score"
  )
