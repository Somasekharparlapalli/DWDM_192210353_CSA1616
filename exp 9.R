marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

equal_freq_bins <- split(marks, cut(rank(marks), 3, labels = FALSE))

equal_width_bins <- split(marks, cut(marks, 3, include.lowest = TRUE))

hist(marks, main = "Histogram of Marks", xlab = "Marks", col = "blue", border = "black")