students <- data.frame(
  name = c("Alice", "Bob", "Chris", "Diana"),
  score = c(85, 90, 78, 92),
  passed = c(TRUE, TRUE, TRUE, TRUE)
)

print("students")
print(students)
print("head(students):")
print(head(students))
print("str(students):")
print(str(students))
print("summary(students):")
print(summary(students))

print("Column access:")
print("students$name")
print(students$name)
print("students[[\"name\"]]")
print(students[["name"]])
print("students[, \"name\"]")
print(students[, "name"])

print("students[1, ]      # first row")
print(students[1, ])      # first row
print("students[1:2, ]    # first two rows")
print(students[1:2, ])    # first two rows
print("Filter rows")
print(students[students$score > 85, ])

print("Add new column 'grade'")
students$grade <- ifelse(students$score >= 90, "A", "B")
print(students)

print("Loading data from a CSV")
students <- read.csv("data/students.csv")
print(students)

# Write data to a new CSV
write.csv(students, "data/students_updated.csv", row.names = FALSE)

# Mini project
students <- read.csv("data/students.csv")

# Inspect data
print("str(students))")
print(str(students))
print("summary(students))")
print(summary(students))

# Add a column
students$passed <- students$score >= 80

# Filter high performers
top_students <- students[students$score >= 90, ]

print("Students")
print(students)
print("Top students")
print(top_students)