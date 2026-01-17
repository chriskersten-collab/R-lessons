# R Fundamentals — Lesson 3
# Modern R with dplyr and the tidyverse

library(tidyverse)

students <- tibble (
  name = c("Alice", "Bob", "Chris", "Diana"), 
  score = c(85, 90, 78, 92),
  major = c("Math", "CS", "History", "CS")
)
students

students %>% filter(score > 85)

students %>% filter(score > 80, major == "CS")

students %>% select(name, score)

students %>% select(-major)

# mutate() — create new columns
students %>%
  mutate(
    passed = score >= 80,
    grade = case_when(
      score >= 90 ~ "A",
      score >= 80 ~ "B",
      TRUE ~ "C"
    )
  )

# arrange() — sort rows
students %>% arrange(score)
students %>% arrange(desc(score))

# summarise() — aggregate data
students %>%
  summarise(
    avg_score = mean(score),
    max_score = max(score),
    count = n()
  )

# group_by() + summarise() — powerful combo
students %>%
  group_by(major) %>%
  summarise(
    avg_score = mean(score),
    count = n()
  )

# The pipe %>% (how to read it)
students %>%
  filter(score > 80) %>%
  select(name, score) %>%
  arrange(desc(score))
# Reads as:
#   
# Take students
# then filter high scores
# then keep name and score
# then sort descending
# 
# This is why modern R is so expressive.

# Real mini-project
students <- read_csv("data/students.csv")
result <- students %>%
  filter(score >= 80) %>%
  mutate(passed = TRUE) %>%
  arrange(desc(score))
result