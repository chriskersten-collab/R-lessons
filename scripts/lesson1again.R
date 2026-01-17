print("Lesson 1 repeated in RStudio")

# variables
x <- 10
name <- "Chris"
pi_value <- 3.14

x
name
pi_value

# Basic data types
x <- 5
y <- 5.5
z <- "hello"
flag <- TRUE
class(x)
class(y)
class(z)
class(flag)

# Vectors (R’s Superpower) 
nums <- c(1, 2, 3, 4, 5)
nums
nums * 2
nums + 10
nums / 2

# Indexing
nums <- c(10, 20, 30, 40)
nums[1]
nums[4]
nums[2:3]
nums[nums > 20]

# Functions
add_two <- function(x) {
  x + 2
}
add_two(10)

# Basic Math
nums
mean(nums)
sum(nums)
min(nums)
max(nums)
length(nums)

# Your First Real Mini-Exercise
# Try this in your file: 
scores <- c(72, 85, 90, 66, 78)
average <- mean(scores)
highest <- max(scores)
average
highest
