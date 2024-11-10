data <- data.frame(
  ItemCode = c(1001, 1002, 1003, 1004, 1005),
  ItemCategory = c("Electronics", "Desktop Supplies", "Office Supplies", "USB", "CD Drive"),
  ItemPrice = c(700, 300, 350, 400, 800)
)
print("Item Details Table 1:")
print(data)
subsetPrice <- data[data$ItemPrice >= 350, ]
print("Items with price greater than or equal to 350:")
print(subsetPrice)
officeDesktopSupply <- data[data$ItemCategory %in% c("Office Supplies", "Desktop Supplies"), ]
print("Items in 'Office Supplies' or 'Desktop Supplies' category:")
print(officeDesktopSupply)
itemDetails <- data.frame(
  ItemCode = data$ItemCode,
  ItemQtyOnHand = c(10, 5, 15, 20, 25),
  ItemReorderLvl = c(5, 3, 10, 15, 20)
)
print("Item Details Table 2:")
print(itemDetails)
merged_data <- merge(data, itemDetails, by="ItemCode")
print("Merged Data Frame:")
print(merged_data)