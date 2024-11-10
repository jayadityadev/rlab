library(MASS)
data(mammals)
mammals
pearson_corr <- cor(mammals$brain, mammals$body, method = "pearson")
print(paste("Pearson correlation coefficient: ", pearson_corr))
spearman_corr <- cor(mammals$brain, mammals$body, method = "spearman")
print(paste("Spearman correlation coefficient: ", spearman_corr))
plot(mammals$body, mammals$brain, col="RED", pch=15, cex=1, xlab="Body weight (kg)", ylab="Brain weight (g)")
mammals1 <- mammals[order(mammals$body),]
print(mammals1)
mammals1$log_body <- log(mammals1$body)
mammals1$log_brain <- log(mammals1$brain)
plot(mammals1$log_body, mammals1$log_brain, col="BLUE", pch=15, cex=1, xlab="Log body weight (kg)", ylab="Log brain weight (g)")