# Multivariate Regression 
multivariate <-read.csv(file.choose())
head(multivariate)
attach(multivariate)
library(dplyr)
help(lm)
mm <-lm(Homeowners~Immigrant)
summary(mm)$coef
plot(Homeowners~Immigrant)
help(abline)
abline(mm)
abline(mm,col=2,lwd=3)
newImmigrantdata<-data.frame(Immigrant = c(0,  20))
mm %>% predict(newImmigrantdata)
abline(mm)
abline(mm,col=3,lwd=3) # line color = green, line width = 3
attributes(mm)
mm$coefficients


plot(mtars$wt,mtcars$mpg)
library(ggplot2)
help(qplot)
qplot(mtcars$wt,mtcars$mpg)
qplot(wt,mpg,data = mtcars)
help(aes)
ggplot(mtcars,aes(x=wt,y=mpg))+ geom_point()
plot(pressure$temperature,pressure$pressure, type = "l")
points(pressure$temperature,pressure$pressure)
lines(pressure$temperature,pressure$pressure/2, col = "red")
points(pressure$temperature,pressure$pressure/2, col = "blue")
qplot(pressure$temperature,pressure$pressure, geom="line")
qplot(temperature,pressure, data= pressure,  geom="line")
ggplot(pressure, aes(x=temperature, y=pressure)) + geom_line() + geom_point()


barplot(BOD$demand, names.arg = BOD$Time)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
qplot(mtcars$cyl)
qplot(factor(mtcars$cyl))
qplot(factor(cyl),data = mtcars)
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar()
help(geom_bar)
