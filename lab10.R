data(mtcars)
print(mtcars)
num_obs <- nrow(mtcars)
num_var <- ncol(mtcars)
cat("Total number of observations:", num_obs, "\n")
cat("Total number of variables:", num_var, "\n")
names(mtcars)
rownames(mtcars)
carMaxHP <- mtcars[mtcars$hp == max(mtcars$hp), ]
carMinHP <- mtcars[mtcars$hp == min(mtcars$hp), ]
print("Car with highest HP:")
print(carMaxHP)
print("Car with lowest HP:")
print(carMinHP)
par(mfrow = c(3, 4))
for (i in 1:num_var) {
  hist(mtcars[, i], main = colnames(mtcars)[i], col = "pink", border = "purple")
}
avgDiff <- mean(mtcars$hp[mtcars$cy] == 3) - mean(mtcars$hp[mtcars$cy] == 4)
sdDiff <- sd(mtcars$hp[mtcars$cy] == 3) - sd(mtcars$hp[mtcars$cy] == 4)
cat("Average difference of HP between 3 and 4 cylinder vehicles:", avgDiff)
cat("Standard deviation of difference of HP between 3 and 4 cylinder vehicles:", sdDiff)
pearsonCor <- cor(mtcars, method = "pearson")
maxCor <- max(pearsonCor[upper.tri(pearsonCor, diag = F)])
pairs <- which(pearsonCor == maxCor, arr.ind = T)
pairs
pair_names <- rownames(pearsonCor)[pairs[, 1]]
cat("Pair of variables with the highest Pearson correlation:", pair_names, "\n")
cat("Correlation coefficient:", maxCor, "\n")