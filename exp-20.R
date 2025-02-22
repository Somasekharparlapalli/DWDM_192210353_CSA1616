# Step 1: Load required libraries
library(ggplot2)

# Step 2: Load the dataset (assuming the file "diabetes.csv" is in your working directory)
diabetes_data <- read.csv("diabetes.csv")

# Step 3: Inspect the dataset (optional)
head(diabetes_data)

# Step 4: Clean the data (if required)
# For example, check for NA values
diabetes_data <- na.omit(diabetes_data)

# Step 5: Create a scatterplot for BloodPressure vs Age
ggplot(diabetes_data, aes(x = Age, y = BloodPressure)) +
  geom_point() +  # Scatter plot
  labs(title = "Blood Pressure vs Age", x = "Age", y = "Blood Pressure") +
  theme_minimal()

# Step 6: Create Age Groups (for bar chart)
# You can create age groups such as: "Under 30", "30-40", "40-50", "50-60", "60+"
diabetes_data$AgeGroup <- cut(diabetes_data$Age, breaks = c(0, 30, 40, 50, 60, Inf),
                              labels = c("Under 30", "30-40", "40-50", "50-60", "60+"))

# Step 7: Create a bar chart for Blood Pressure by Age Group
ggplot(diabetes_data, aes(x = AgeGroup, fill = factor(BloodPressure))) +
  geom_bar() +
  labs(title = "Blood Pressure Distribution by Age Group", x = "Age Group", y = "Count") +
  theme_minimal() +
  scale_fill_manual(values = c("lightblue", "orange"))
