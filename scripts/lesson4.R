# R Fundamentals — Lesson 4
# Joins, Reshaping, and Working with Messy Data

library(tidyverse)

# Joining Data (like SQL JOINs)
students <- tibble(
  student_id = c(1, 2, 3, 4),
  name = c("Alice", "Bob", "Chris", "Diana")
)

scores <- tibble(
  student_id = c(1, 2, 4),
  score = c(85, 90, 92)
)

# left_join (most common)
students %>%
  left_join(scores, by = "student_id")

# inner_join
students %>%
  inner_join(scores, by = "student_id")


# left_join (most common)
students %>%
  left_join(scores, by = "student_id")

# Check missing:
is.na(result$score)

# Filter missing:
result %>% filter(is.na(score))

# Remove missing rows:
result %>% drop_na(score)

# Replace missing:
result %>% mutate(score = replace_na(score, 0))

# Reshaping Data (pivot_longer / pivot_wider)
# This is one of the most important real-world skills.
grades <- tibble(
  name = c("Alice", "Bob"),
  math = c(90, 85),
  science = c(88, 92),
  history = c(84, 80)
)
grades

# Convert wide → long (tidy format)
grades_long <- grades %>%
  pivot_longer(
    cols = math:history,
    names_to = "subject",
    values_to = "score"
  )
grades_long

# Convert long → wide
grades_long %>%
  pivot_wider(
    names_from = subject,
    values_from = score
  )

# A Realistic Mini-Project
# This ties everything together.
students <- read_csv("data/ex4students.csv")
scores <- read_csv("data/ex4scores.csv")

# Join data
full_data <- students %>%
  left_join(scores, by = "student_id")

# Handle missing values
clean_data <- full_data %>%
  filter(!is.na(score))

# Average score per student
summary <- clean_data %>%
  group_by(name, major) %>%
  summarise(
    avg_score = mean(score),
    exams_taken = n(),
    .groups = "drop"
  ) %>%
  arrange(desc(avg_score))
summary