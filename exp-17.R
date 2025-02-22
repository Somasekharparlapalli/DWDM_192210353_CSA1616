# Install and load datasets package (if not already installed)
install.packages("datasets")
library(datasets)

# Load the water dataset
data("water")

# (1) Scatter plot to check linear relationship
plot(water$hardness, water$mortality, col="blue", pch=16, 
     main="Scatter Plot: Mortality vs Hardness",
     xlab="Water Hardness", ylab="Mortality Rate")

# (2) Fit a Linear Regression Model
model <- lm(mortality ~ hardness, data=water)

# Add regression line to the plot
abline(model, col="red", lwd=2)

# (3) Predict mortality for hardness = 88
new_data <- data.frame(hardness=88)
predicted_mortality <- predict(model, new_data)

# Print the prediction result
cat("Predicted Mortality for Hardness=88:", predicted_mortality, "\n")
