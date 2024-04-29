# Read the CSV file into a data frame
data <- read.csv("covid.csv")

# View the structure of the data frame to identify the column you want to remove
str(data)

# Remove a column by name using indexing
data <- data[, -which(names(data) == "column_name_to_remove")]

# Alternatively, you can use subset() to select only the columns you want to keep
data <- subset(data, select = -c(column_name_to_remove))

# Write the modified data frame back to a CSV file if needed
write.csv(data, "modified_file.csv", row.names = FALSE)
