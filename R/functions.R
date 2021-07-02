# Functions 
# Anna Moeller 
# 7/2/2021

# Functions we are familiar with
<functionname>() # parentheses after word indicate function
mean(), hist(), lm(), max(), length()
# Components of functions: function name, arguments, return value
?lm


# Calling functions 

# We often don't name the data argument, but we name the rest. 
# Example: histogram
x <- rnorm(100, 14, 5.2)
hist(x)
hist(x, breaks = 20)


# Syntax 
<funtion name> <- function(<arguments>){
  <body of function>
  return(<what-to-return>)
}


# A function with no arguments
sq <- function(){
  2^4
}
sq()
sq(4)

# Function with one argument
sq <- function(x){
  x^4
}
sq()
sq(5)

# Function with two arguments
sq <- function(x, y){
  x^y
}
sq(2,3)
sq()
sq(4)

# Function with defaults 
sq <- function(x, y = 2){
  x^y
}
sq(2,3)
sq(2)

# # Syntax with more complicated functions
# <funtion name> <- function(<arguments>){
#   <body of function>
#   return(<what-to-return>)
# }