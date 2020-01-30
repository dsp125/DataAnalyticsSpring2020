#EPI_Data <-read.csv(file.choose(),header=T)
#attach(EPI_Data)

###EPI###
summary(EPI) 	# stats
fivenum(EPI,na.rm=TRUE)
stem(EPI)		 # stem and leaf plot
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(EPI); qqline(EPI)
x<-seq(30,95,1)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

###WATER_H###
summary(WATER_H) 	# stats
fivenum(WATER_H,na.rm=TRUE)
stem(WATER_H)		 # stem and leaf plot
hist(WATER_H)
hist(WATER_H, seq(30., 95., 1.0), prob=TRUE)
lines(density(WATER_H,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(WATER_H) 

plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(WATER_H); qqline(WATER_H)

###DALY###
summary(DALY) 	# stats
fivenum(DALY,na.rm=TRUE)
stem(DALY)		 # stem and leaf plot
hist(DALY)
hist(DALY, seq(30., 95., 1.0), prob=TRUE)
lines(density(DALY,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(DALY) 

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(DALY); qqline(DALY)