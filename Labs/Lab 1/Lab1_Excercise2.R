EPI_Data <-read.csv(file.choose(),header=T)
attach(EPI_Data)

###Landlock
EPILand<-EPI[!Landlock]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)

###High Population Density
EPILand<-EPI[!High_Population_Density]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)

###No_surface_water
EPILand<-EPI[!No_surface_water]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)

###Desert
EPILand<-EPI[!Desert]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)

###EPI_regions
EPILand<-EPI[EPI_regions]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)

###GEO_subregion
EPILand<-EPI[GEO_subregion]
ELand<-EPILand[!is.na(EPILand)]
hist(ELand)
hist(ELand, seq(30., 95., 1.0), prob=TRUE)
summary(ELand) 	# stats
fivenum(ELand,na.rm=TRUE)
stem(ELand)		 # stem and leaf plot
lines(density(ELand,na.rm=TRUE,bw=1.)) # or try bw="SJ"
rug(ELand) 

plot(ecdf(ELand), do.points=FALSE, verticals=TRUE) 
par(pty="s") 
qqnorm(ELand); qqline(ELand)