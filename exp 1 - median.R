freq <- c(200, 450, 300, 1500, 700, 44)
classes <- c(1, 5, 15, 20, 50, 80, 110)
cum_freq <- cumsum(freq)
N <- sum(freq)
median_index <- which(cum_freq >= N/2)[1]
L <- classes[median_index]  
F <- ifelse(median_index > 1, cum_freq[median_index - 1], 0)
f <- freq[median_index]
h <- classes[median_index + 1] - classes[median_index]
median <- L + ((N/2 - F) / f) * h
print(median)

