data("mtcars")
plot(mtcars$mpg, type="o", col="blue", ylim=c(min(mtcars$mpg, mtcars$qsec), max(mtcars$mpg, mtcars$qsec)),
     xlab="Index", ylab="Values", main="Multiple Lines: mpg & qsec")
lines(mtcars$qsec, type="o", col="red")
legend("topright", legend=c("mpg", "qsec"), col=c("blue", "red"), lty=1, pch=1)
