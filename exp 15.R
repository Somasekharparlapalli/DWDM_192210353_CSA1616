# Load dataset
data("AirPassengers")

# Create histogram with specified bins
hist(AirPassengers, breaks=seq(100, 700, by=150), col="lightblue",
     main="Histogram of AirPassengers", xlab="Passengers", ylab="Frequency")
