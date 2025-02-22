preferences <- matrix(c(18, 22, 20, 
                        2, 28, 40, 
                        20, 10, 40), 
                      nrow = 3, byrow = TRUE)
colnames(preferences) <- c("A", "B", "C")
rownames(preferences) <- c("5-6 years", "7-8 years", "9-10 years")
preferences_df <- as.data.frame(preferences)
cov_B_C <- cov(preferences_df$B, preferences_df$C)
cat("Sample Covariance between B and C:", cov_B_C, "\n")
cov_matrix <- cov(preferences_df)
cat("Sample Covariance Matrix:\n")
print(cov_matrix)
cor_B_C <- cor(preferences_df$B, preferences_df$C)
cat("Sample Correlation between B and C:", cor_B_C, "\n")
cor_matrix <- cor(preferences_df)
cat("Sample Correlation Matrix:\n")
print(cor_matrix)
