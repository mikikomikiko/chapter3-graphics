#1Plot a cheat-sheet with values of color and point type (col = , and pch = ) from 1 to 25, and export it as a jpeg of 15 cm wide, 6 cm high and resolution 100 points per cm.
num = 0 ; num1 = 0
plot(0, 0, xlim = c(0, 21), ylim = c(0.5, 3.5)
     , yaxt = "n", ylab = "", xlab = "")

axis(2, 1, labels = c("col"))
for (i in 1:25) {
  points(i, 1, pch = 20, col = i, cex = 3)
}

#2Plot into a graph ten Poisson distributions with lambda ranging from 1 to 10. Put legend and title. Export it as a .tiff file with size of 15x15 cm.
lambda <- c(1:10)
plot(1:10, lambda, type="l", main="Poisson distributions")
tiff("Poisson distributions", width = 15, height = 15, units = "cm", 
     bg = "transparent", res = 150) 

#3Import data from this article: https://peerj.com/articles/328/
#With these data, using for(), plot graphs to represent the effect of all the numerical variables, from “richness” to “mean_quality” on “yield”. Choose the type of graph that you think better represents this effect for the different species. Create only one pdf with all the graphs inside.
#### Import csv from web 
Webcsv <- "https://dfzljdn9uc3pi.cloudfront.net/2014/328/1/Appendix1.csv"
Data <- read.table(Webcsv, header = T, sep = ",", skip = 2)
str(Data)                    # Check if it has been correctly imported

Data2 <- Data[ ,6:12]
boxplot(Data2)
for (i in 1:ncol(DF2)) {
  boxplot(DF2[, i],
          main = colnames(DF2)[i])
col = "black"
  }

