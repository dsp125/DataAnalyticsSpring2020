EPI_Data <- read.csv(file.choose(),header=T)
attach(EPI_Data)
head(EPI_Data)
library(dplyr)
####Central Tendancies####
mean(EPI)
mode(EPI)
median(EPI)

mean(DALY)
mode(DALY)
median(DALY)

####Histograms####
hist(EPI)
hist(DALY)

####5 Random Data Points####
sample_n(data.frame(EPI,DALY),5)

####10% Random Data Points####
sample_frac(data.frame(EPI,DALY),.1)

###arrange in descending####
help(arrange)
new_decs_EPI <- arrange(data.frame(EPI,DALY),desc(EPI))
new_decs_DALY <- arrange(data.frame(EPI,DALY),desc(DALY))
new_decs_EPI
new_decs_DALY

####Mutate####
help(mutate)
mutate(data.frame(EPI), double_EPI = EPI * 2)
mutate(data.frame(EPI), double_DALY = DALY * 2)


####summarise####
summarise(data.frame(EPI,DALY),mean_EPI = mean(EPI),mean_DALY = mean(DALY))

###boxplot###
boxplot(EPI,DALY)

####qq plot###
qqplot(EPI,DALY)

### Regression ###
lmEPI<-lm(EPI~DALY+AIR_H+WATER_H)
summary(lmEPI) # AIR_H is most significant
cEPI<-coef(lmENVH)
DALYNEW<-c(seq(5,95,5)) 
AIR_HNEW<-c(seq(5,95,5)) 
WATER_HNEW<-c(seq(5,95,5))
NEW<-data.frame(DALYNEW,AIR_HNEW,WATER_HNEW)
pEPI<-predict(lmEPI,NEW,interval= 'prediction')
cEPI<-predict(lmEPI,NEW,interval= 'confidence')