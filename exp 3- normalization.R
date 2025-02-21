# Given data
data <- c(200, 300, 400, 600, 1000)
min_max_norm <- (data - min(data)) / (max(data) - min(data))
print("Min-Max Normalization:")
print(min_max_norm)
z_score_norm <- (data - mean(data)) / sd(data)
print("Z-Score Normalization:")
print(z_score_norm)
