# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(x, s) {
  if(nchar(x) >= (nchar(s) * 2)) {
    return("TRUE")
  } else if(nchar(s) >= (nchar(x) * 2)) {
    return("TRUE")
  } else {
    return("False")
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("Hello World", "My name is Rico")
is_twice_as_long("Hi", "Last year I went to New Orleans")
is_twice_as_long("YOOO", "Hi")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(a, b) {
  if(nchar(a) > nchar(b)) {
    N <- nchar(a) - nchar(b) #difference between string a and b
    paste("Your first string is longer by", N, "characters")
  } else if(nchar(b) > nchar(a)) {
    N <- nchar(b) - nchar(a) #difference between string b and a
    paste("Your second string is longer by", N, "characters")
  } else {
    return("Your strings are the same length!")
  }
}
  

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("Hello World", "My name is Rico")
describe_difference("YOO what's up info", "This can suck")
describe_difference("Hello", "Howdy")