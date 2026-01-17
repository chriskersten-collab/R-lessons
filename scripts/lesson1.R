print("Hello, R!")
x <- 10
name <- "Chris"
pi_value <- 3.14
print(x)
print(name)
print(pi_value)
x <- 5          # numeric
y <- 5.5        # numeric
z <- "hello"    # character
flag <- TRUE    # logical
print(class(x))
print(class(y))
print(class(z))
print(class(flag))
nums <- c(1, 2, 3, 4, 5)
print(nums)
print(nums * 2)
print(nums + 10)
print(nums / 2)

nums <- c(10, 20, 30, 40)
print(nums[1])
print(nums[4])
print(nums[2:3])
print(nums[nums > 20])

add_two <- function(x) {
  x + 2
}

print(add_two(10))

print(mean(nums))
print(sum(nums))
print(min(nums))
print(max(nums))
print(length(nums))

scores <- c(72, 85, 90, 66, 78)

average <- mean(scores)
highest <- max(scores)

print(average)
print(highest)
