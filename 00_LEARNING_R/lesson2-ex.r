library(dplyr)
library(sjmisc)
library(sjPlot)
library(ggplot2)


data("mtcars")

names (mtcars)
head(mtcars)

newcars<-select(mtcars,c("mpg","hp","wt"))


##plot  a correlation matrix for all variables
sjp.corr (newcars)

sjt.corr (newcars,show.p = TRUE,p.numeric = TRUE)

