prices <- c(1, 1, 5, 5, 5, 5, 5, 8, 8, 10, 10, 10, 10, 12, 14, 14, 14, 15, 15, 
            15, 15, 15, 15, 18, 18, 18, 18, 18, 20, 20, 20, 20, 20, 20, 21, 21, 
            21, 21, 25, 25, 25, 25, 25, 28, 28, 30)
bins <- cut(prices, breaks=4, labels=FALSE)
print(data.frame(Prices=prices, Bin=bins))
bin_means <- tapply(prices, bins, mean)  
smoothed_means <- bin_means[bins]
print(data.frame(Original=prices, Smoothed=smoothed_means))
bin_min <- tapply(prices, bins, min)  
bin_max <- tapply(prices, bins, max)  
smoothed_boundaries <- ifelse(abs(prices - bin_min[bins]) < abs(prices - bin_max[bins]), bin_min[bins], bin_max[bins])
print(data.frame(Original=prices, Smoothed=smoothed_boundaries))
hist(prices, col="lightblue", main="Price Histogram", xlab="Price", ylab="Frequency")
