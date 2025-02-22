data("mtcars")
boxplot(mpg ~ cyl, data=mtcars, col=c("lightblue", "lightgreen", "lightcoral"),
        main="MPG vs Number of Cylinders",
        xlab="Number of Cylinders", ylab="Miles Per Gallon (MPG)")
