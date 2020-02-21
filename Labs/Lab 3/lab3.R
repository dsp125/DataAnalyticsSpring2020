library(rpart)
library(rpart.plot)
data("msleep")
str(msleep)
mSleepDF1 <-msleep[,c(3,6,10,11)]
str(mSleepDF1)
head(mSleepDF1)
sleepModel_1 <-rpart(sleep_total~ ., data=mSleepDF1, method = "anova")
rpart.plot(sleepModel_1, type = 3, fallen.leaves= TRUE)
rpart.plot(sleepModel_1, type = 3,digits = 3, fallen.leaves= TRUE) # with 3 digits
rpart.plot(sleepModel_1, type = 3,digits = 4, fallen.leaves= TRUE)


install.packages("C50")
require(C50)# we will be using the iris dataset to do a #classfication
data("iris")
head(iris)
str(iris)
table(iris$Species)

set.seed(9850)
grn<-runif(nrow(iris))
irisrand<-iris[order(grn),]
str(irisrand)
classificationmodel1 <-C5.0(irisrand[1:100,-5], irisrand[1:100,5])
classificationmodel1
summary(classificationmodel1)
prediction1 <-predict(classificationmodel1,irisrand[101:150,])
prediction1
table(irisrand[101:150,5],prediction1)
