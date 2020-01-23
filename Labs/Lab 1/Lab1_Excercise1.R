EPI_Data <-read.csv(file.choose(),header=T)
col <- EPI_Data$EPI
boxplot(col)
attach(col)