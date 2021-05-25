
library(dplyr)
library(sjmisc)
library(sjPlot)
library(ggplot2)
library(car)

data(iris)


names(iris)

newiris <- select(iris,c( "Species" ,"Sepal.Length"))

### summarise dataframe

summary(newiris)


### plot numerical variable only histogram

ggplot(newiris) +
  aes(x = Sepal.Length ) + geom_histogram()

### plot numerical variable only dotplot (similar to hist)

ggplot(newiris) +
  aes(x = Sepal.Length ) + geom_dotplot() 



### plot numerical variable for each category

ggplot(newiris) +
  aes(x = Species, y = Sepal.Length, color = Species) +
  geom_jitter() +
  theme(legend.position = "none")


# Boxplot
boxplot(Sepal.Length ~ Species,
        data = newiris
)






###### ANOVA

result_aov <- aov(Sepal.Length ~ Species,data = newiris)


# histogram of residuals (to check visually for normality of errors)
hist(result_aov$residuals)

# QQ-plot

qqPlot(result_aov$residuals,
       # id = FALSE to remove point identification
       id = FALSE )

#Kolmogorov-Smirnoff test of normality

ks.test(result_aov$residuals, 
        "pnorm", mean=mean(result_aov$residuals), 
        sd=sd(result_aov$residuals))


#   Homogeneity of variances Levene test
#The null and alternative hypothesis for both tests are:
  
#H0: variances are equal
#H1: at least one variance is different


leveneTest(Sepal.Length ~ Species,data = newiris)

#   Homogeneity of variances plot (RESIDUALS VS FITTED)
plot(result_aov, which = 1)


summary(result_aov)




