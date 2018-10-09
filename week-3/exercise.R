iris_df <- data.frame(iris)

# Select all values of data frame for Sepal.length
iris_df$Sepal.Length

# Select only rows of Virginica flowers
virginica_flowers <- iris_df[iris_df$Species == "virginica", ]
virginica_flowers

# Select only the sepal legnth of the Virginica flowers
virginica_flowers$Sepal.Length

# Select rows where Petal.Length > 4.0
iris_df[iris_df$Petal.Length > 4.0, ]

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris_df$long_petal <- iris_df$Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length
longest <- max(iris_df$Sepal.Length)
iris_df[iris_df$Sepal.Length == longest, ]$Species

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
setosa <- iris_df[iris_df$Species == "setosa", ]
setosa[setosa$Sepal.Width > 3.0, ]