# Function to calculate factorial using recursion
factorial_recursive <- function(n) {
  if(n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n-1))
  }
}

# Test the function
number <- 5
result <- factorial_recursive(number)
print(result)
