library(dplyr)
library(sjmisc)
library(sjPlot)
library(ggplot2)


data(iris)

mean (iris$Sepal.Length)
sd (iris$Sepal.Length)
var (iris$Sepal.Length)




# good for now but....CREATE A BETTER HISTOGRAM :)
sjp.frq (iris$Sepal.Length,type="histogram",
         normal.curve = TRUE,title = "My chart")

#  A BETTER HISTOGRAM

myplot <- ggplot(iris, aes(x = Sepal.Length)) 
myplot + geom_histogram(bins = 50, color = "black", fill = "grey") 



