# R Fundamentals — Lesson 2
# Data Frames, CSVs, and Real Data

students <- data.frame(
  name = c("Alice", "Bob", "Chris", "Diana"),
  score = c(85, 90, 78, 92),
  passed = c(TRUE, TRUE, TRUE, TRUE)
)
students
head(students)
str(students)
summary(students)

# Accessing Columns
students$name
students[["name"]]
students[, "name"]

# Access rows:
students[1, ] # first row
students[1:2, ] # first 2 rows

# Filter rows:
students[students$score > 85, ]

# Add a New Column
students$grade <- ifelse(students$score >= 90, "A", "B")
students

# Reading a CSV File
students <- read.csv("data/students.csv")
students

# Writing Data Back to CSV
write.csv(students, "data/output.csv", row.names = FALSE)

# Mini Project (Important)
students <- read.csv("data/students.csv")
str(students)
summary(students)
students$passed <- students$score >= 80 # add a column
top_students <- students[students$score >= 90, ]
students
top_students
