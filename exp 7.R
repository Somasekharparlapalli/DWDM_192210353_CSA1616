# Define the getmode() function
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Example usage
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mode_value <- getmode(pencils)
cat("Mode of pencils:", mode_value, "\n")
