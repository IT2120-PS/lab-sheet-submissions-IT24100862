setwd("C:\\Users\\it24100862\\Desktop\\IT24100862")
Delivery <- read.table("C:\\Users\\it24100862\\Desktop\\IT24100862\\ExerciseLab5.txt", header = TRUE)
fix(Delivery)
attach(Delivery)


Gram<-hist(Delivery$Delivery_Time_.minutes.,main = "Histogram for Delivery",breaks = seq(20,70,length.out = 10),right = FALSE,xlab = "Time",ylab = "Frequency")

cum_freq <- cumsum(Gram$counts)
cum_freq
mids <- round(Gram$mids)
mids
plot(mids,cum_freq,type="o",main="Cumulative Freq Polygon",xlab= "Delivery Times",ylab = "cumulative Freq")
  