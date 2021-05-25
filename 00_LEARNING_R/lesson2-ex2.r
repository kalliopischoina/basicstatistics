library(dplyr)
library(sjmisc)
library(sjPlot)
library(ggplot2)


data("mtcars")

names (mtcars)
head(mtcars)

newmtcars <- select (mtcars,c("am","gear","carb"))


##plot  a correlation matrix for all variabless
sjp.corr (newmtcars)

sjt.corr (newmtcars,show.p = TRUE,p.numeric = TRUE)