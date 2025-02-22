tennis_scores <- c(15, 18, 22, 25, 30, 34, 36, 40, 42, 45, 50, 55, 60, 90)  # 90 is an outlier
boxplot(tennis_scores, col="lightblue",
        main="Boxplot of Tennis Players' Scores",
        ylab="Points Scored")
outlier_points <- boxplot.stats(tennis_scores)$out
text(rep(1, length(outlier_points)), outlier_points, labels=outlier_points, pos=3, col="red")
