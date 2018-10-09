## Part 1: Debugging

my_num <- 6
initials <- "I. M."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# the sum function requires a numeric vector, but my_vector is a character vector.

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# The library stringr is installed but not loaded, need to use the library() function to fix the error.

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# The variable initial does not exist, it should be initials.


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
my_vec <- c(9, "hello", 21)
typeof(my_vec)

# Write a function `compare_length` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
compare_length <- function(vec_1, vec_2) {
  diff <- length(vec_1) - length(vec_2)
  return(paste("The difference in lengths is ", abs(diff)))
}

# Pass two vectors of different length to your `compare_length` function
vec_1 <- c(1, 2, 4, 5)
vec_2 <- c(12, 5, 3, 6, 7, 7)
compare_length(vec_1, vec_2)

# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
describe_difference <- function(vec_1, vec_2) {
  diff <- length(vec_1) - length(vec_2)
  if(diff > 0) {
    return(paste("Your first vector is longer by ", diff, " elements"))
  }
  return(paste("Your second vector is longer by ", abs(diff), " elements"))
}

# Pass two vectors to your `describe_difference` function
vec_1 <- c(12, 5, 2, 6, 12, 6, 21, 4)
vec_2 <- c(12, 3)
describe_difference(vec_1, vec_2)

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one
combine_vectors <- function(vec_1, vec_2, vec_3) {
  return(c(vec_1, vec_2, vec_3))
}

# Send 3 vectors to your function to test it.
vec_1 <- c(1, 2, 4, 6, 2)
vec_2 <- c("hello", 1, 3)
vec_3 <- c("why", 12, 6)
combine_vectors(vec_1, vec_2, vec_3)

# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
caps_time <- function(courses) {
  stringr::str_to_lower(courses)
}

caps_time(c("Informatics 201", "MATH 126"))
