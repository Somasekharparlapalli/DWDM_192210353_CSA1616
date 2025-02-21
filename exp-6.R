age_value <- 35
sd_age <- 12.94

min_max_norm <- (age_value - min(age)) / (max(age) - min(age))

z_score_norm <- (age_value - mean(age)) / sd_age

decimal_scaling_norm <- age_value / (10^nchar(as.character(max(age))))

list(min_max = min_max_norm, z_score = z_score_norm, decimal_scaling = decimal_scaling_norm)