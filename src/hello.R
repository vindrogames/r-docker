library(tibble)
library(ggplot2)
print("Hello, World!fdsfdsafsafsafsa")


# Create a simple data frame
df <- tibble(
  x = 1:10,
  y = rnorm(10)
)

# Print the data frame
print(df)

# Create a simple plot
ggplot(df, aes(x = x, y = y)) +
  geom_point() +
  ggtitle("Scatter plot of x vs y")