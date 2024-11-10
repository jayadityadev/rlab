# Part a: Assign different types of values to variables and display their type
var_double <- 5.5
var_integer <- 5L
var_logical <- TRUE
var_complex <- 1 + 2i
var_character <- "Hello"

print(typeof(var_double))
print(typeof(var_integer))
print(typeof(var_logical))
print(typeof(var_complex))
print(typeof(var_character))

# Part b: Arithmetic and Logical Operations
# Arithmetic
x <- 10
y <- 3
print(x + y)
print(x - y)
print(x * y)
print(x / y)
print(x ^ y)
print(x %% y)

# Logical
print(x > y)
print(x == y)
print(x != y)

# Part c: Generate sequences and create vectors
sequence <- seq(1, 10, by=2)
vector <- c(10, 20, 30, 40)
print(sequence)
print(vector)

# Part d: Create Matrices
matrix1 <- matrix(1:9, nrow=3, ncol=3)
print(matrix1)

# Part e: Create Matrices from Vectors using Binding Function
vector1 <- c(1, 2, 3)
vector2 <- c(4, 5, 6)
vector3 <- c(7, 8, 9)
matrix_bind <- rbind(vector1, vector2, vector3)
print(matrix_bind)

# Part f: Element extraction from vectors, matrices, and arrays
print(vector[2]) # extract second element from vector
print(matrix1[1, 2]) # extract element from matrix
