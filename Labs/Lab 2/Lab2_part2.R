# Multiple Regression 
multiple_regression <-read.csv(file.choose())
head(multiple_regression)
attach(multiple_regression)
mm<-lm(formula = ROLL~UNEM+HGRAD)
help(predict)
NEW <- data.frame(HGRAD = 90000,UNEM = .07)
pmm<-predict(mm,NEW,interval= 'prediction')
cmm<-predict(mm,NEW,interval= 'confidence')
pmm # Roll is about 76000

mm<-lm(formula = ROLL~UNEM+HGRAD+INC)
NEW <- data.frame(INC = 25000)
pmm<-predict(mm,NEW,interval= 'prediction')
cmm<-predict(mm,NEW,interval= 'confidence')
pmm # Roll is about 134000

# Classification
library(class)
abalone <-read.csv(file.choose())
head(abalone)
attach(abalone)
colnames(abalone) <-c("sex", "length", 'diameter', 'height', 'whole_weight', 'shucked_wieght', 'viscera_wieght', 'shell_weight', 'rings' )
summary(abalone$rings)
str(abalone)
aba <-abalone
aba$sex<-NULL
normalize <-function(x) {
  return ((x -min(x)) / (max(x) -min(x)))
  }
aba[1:7] <-as.data.frame(lapply(aba[1:7], normalize))
ind<-sample(2, nrow(aba), replace=TRUE, prob=c(0.7, 0.3))
KNNtrain<-aba[ind==1,]
KNNtest<-aba[ind==2,]
KNNpred<-knn(train = KNNtrain[1:7], test = KNNtest[1:7], cl = KNNtrain$rings, k = 55)
KNNpred
table(KNNpred)

# Clustering
dim(iris)
summary(iris)
iris_data <- select(iris,-c(Species))
set.seed(300)
k.max<-15
wss<-sapply(1:k.max,function(k){kmeans(iris_data,k,nstart= 20,iter.max = 1000)$tot.withinss})
plot(1:k.max,wss, type= "b", xlab= "Number of clusters(k)", ylab= "Within cluster sum of squares")
icluster<-kmeans(iris_data,3,nstart = 20)
icluster
