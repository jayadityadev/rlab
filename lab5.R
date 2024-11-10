# Sieve of Eratosthenes to find all prime numbers up to a specified number
sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      primes[seq(i^2, n, by=i)] <- FALSE
    }
  }
  return(which(primes))
}

# Test the function
limit <- 50
prime_numbers <- sieve_of_eratosthenes(limit)
print(prime_numbers)
