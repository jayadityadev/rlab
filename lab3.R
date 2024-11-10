# Create two 3x3 matrices A and B
A <- matrix(1:9, nrow=3, byrow=TRUE)
B <- matrix(9:1, nrow=3, byrow=TRUE)

# a) Transpose of matrix A and B
transpose_A <- t(A)
transpose_B <- t(B)

# b) Addition of A and B
addition <- A + B

# c) Subtraction of A and B
subtraction <- A - B

# d) Multiplication of A and B
multiplication <- A %*% B

# Display results
print("Transpose of A:")
print(transpose_A)
print("Transpose of B:")
print(transpose_B)
print("A + B:")
print(addition)
print("A - B:")
print(subtraction)
print("A * B:")
print(multiplication)
