library(dplyr)
library(sjmisc)
library(sjPlot)
library(ggplot2)


data(iris)

###see column names of data frame
names(iris)
##create a new dataframe with only numerical values

newiris <-select(iris,c("Sepal.Length","Sepal.Width" , 
                        "Petal.Length", "Petal.Width" ))
##see new dataframe's columns
names(newiris)

##plot  a correlation matrix for all variables
sjp.corr (newiris)

##a correlation matrix table for all variables

sjt.corr(newiris)



