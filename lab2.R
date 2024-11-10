# Sample data
revenue <- c(2000, 3000, 2500, 3500, 4000, 2800, 2700, 2900, 3300, 3700, 3100, 2600)
expenses <- c(1200, 1700, 1500, 1800, 2100, 1600, 1400, 1300, 1500, 1900, 1400, 1100)

# Profit for each month
profit <- revenue - expenses

# Profit after tax (Tax Rate = 30%)
tax_rate <- 0.30
profit_after_tax <- profit * (1 - tax_rate)

# Profit margin for each month
profit_margin <- (profit_after_tax / revenue) * 100

# Good Months (profit after tax > yearly mean)
mean_profit_after_tax <- mean(profit_after_tax)
good_months <- profit_after_tax > mean_profit_after_tax

# Bad Months (profit after tax < yearly mean)
bad_months <- profit_after_tax < mean_profit_after_tax

# Best month
best_month <- which.max(profit_after_tax)

# Worst month
worst_month <- which.min(profit_after_tax)

# Results in $1000 with no decimals
profit_k <- round(profit / 1000)
profit_after_tax_k <- round(profit_after_tax / 1000)
profit_margin_perc <- round(profit_margin)

# Display results
print("Profit for each month (in $K):")
print(profit_k)
print("Profit after tax for each month (in $K):")
print(profit_after_tax_k)
print("Profit margin for each month (in %):")
print(profit_margin_perc)
print("Good months (TRUE):")
print(good_months)
print("Bad months (TRUE):")
print(bad_months)
print("Bes month:")
print(best_month)
print("Profit for each month:")
print(worst_month)

# Generate CSV file
data <- data.frame(revenue, expenses, profit_k, profit_after_tax_k, profit_margin_perc)
write.csv(data, "financial_statement.csv")
