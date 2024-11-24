employee_data <- data.frame(
  id = c(1:20),
  name = c("John", "Jane", "Bob", "Alice", "Charlie", "David", "Eva", "Frank", "Grace", "Harry", "Ivy", "Jack", "Karen", "Liam", "Mia", "Noah", "Olivia", "Paul", "Quinn", "Rachel"),
  salary = c(50000, 55000, 60000, 70000, 75000, 80000, 60000, 90000, 95000, 100000, 650000, 72000, 78000, 55000, 60000, 50000, 95000, 72000, 68000, 80000),
  start_date = as.Date(c("2022-01-01", "2021-11-15", "2020-05-20", "2022-03-10", "2021-08-05", "2020-12-01", "2021-06-15", "2020-02-28", "2019-09-10", "2020-11-05", "2022-02-15", "2019-08-10", "2020-07-01", "2022-04-20", "2021-03-05", "2019-12-10", "2019-05-15", "2020-08-20", "2021-01-30", "2021-09-25")),
  dept = c("HR", "IT", "Finance", "IT", "Marketing", "IT", "HR", "Finance", "Finance", "IT", "HR", "Marketing", "HR", "IT", "Finance", "Marketing", "Finance", "Marketing", "HR", "IT")
)
write.csv(employee_data, "input.csv", row.names = F)
data <- read.csv("input.csv")
print(data)
print(ncol(data))
print(nrow(data))
sal <- max(data$salary)
print(sal)
retval <- subset(data, salary == max(salary))
print(retval)
retval1 <- subset(data, dept == "IT")
print(retval1)
info <- subset(data, salary > 20000 & dept == "IT")
print(info)
write.csv(info, "output.csv", row.names = F)
