# A simple R program to illustrate datatypes in R

# Part A

# Numeric datatypes
a <- 6.5
print(class(a))
print(typeof(a))

# Integer datatype
b <- as.integer(5)
print(class(b))
print(typeof(b))

# Integer with L suffix
c <- 79L
print(class(c))
print(typeof(c))

# Logical datatype
d <- 10
e <- 20
f <- e > d
print(class(f))
print(typeof(f))

# Complex datatype
g <- 2 + 3i
print(class(g))
print(typeof(g))

# Character datatype
h <- "R programming"
print(class(h))
print(typeof(h))

# Part B

# Arithmetic operators

a <- 7.5
b <- 2

# Addition
print(a+b)
# Subtraction
print(a-b)
# Multiplication
print(a*b)
# Division
print(a/b)
# Modulus
print(a%%b)
# Integer Division
print(a%/%b)
# Exponent
print(a^b)

# Logical operators

list1 <- c(TRUE, 0.1)
list2 <- c(0, 4+3i)
print(list1 & list2)
print(list1 | list2)
list3 <- c(0, FALSE)
print(!list3)

b1 <- TRUE
b2 <- FALSE
print(b1 && b2)
print(b1 || b2)

# Part C

# Sequences & Vectors

c(1, 2, 3, 4, 5)
1:5
1.2:5.2
1.2:5
seq(1, 5, by=0.5)
seq(1, 5, length.out = 10)
x <- c(1, 3, 5)
seq(1, 5, along.with = x)
print(typeof(x))
y <- c("apple", "mango")
print(typeof(y))
z <- c(TRUE, FALSE)
print(typeof(z))

# Part D

# Matrices

A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  ncol = 3,
  byrow = T
)
rownames(A) <- c("a", "b", "c")
colnames(A) <- c("c", "d", "e")
print(A)

B = matrix(
  1:9,
  nrow = 3,
  ncol = 3
)
print(B)

# Part E

# Creation of matrices from vectors using binding function

A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),
  nrow = 3,
  ncol = 3,
  byrow = T
)
B = matrix(
  c(10, 11, 12),
  nrow = 1, ncol = 3
)
C = rbind(A, B)
print(C)

# Part F

# Accessing elements from vectors, matrices and arrays

# Vectors
X <- c(2, 5, 18, 1, 12)
X[2]
X[c(4, 1)]

# Matrices
A[1:2, ]
A[, 1:2]
A[1, 2]

# Arrays
vec1 <- 1:12
arr = array(vec1, dim = c(2, 3, 2))
arr[1, 2, 2]
