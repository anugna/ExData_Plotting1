dataset<-read.table(dir()[1],header=TRUE,sep=";")[read.table(dir()[1],header=TRUE,sep=";")[[1]] %in% c("1/2/2007","2/2/2007"),]


dataset[[1]]<-paste(dataset[[1]],dataset[[2]])

# changing to date time format
dataset[[1]]<-strptime(dataset[[1]],"%d/%m/%Y %H:%M:%S")
dataset<-dataset[,-2]

dataset[,2:7]<-lapply(dataset[,2:7],function(x) as.numeric(as.character(x)))

png("plot4.png")

par(mfrow=c(2,2))


plot(dataset[[1]],dataset[[2]],type="l",ylab="Global Active Power",xlab="")

plot(dataset[[1]],dataset$Voltage,type="l",ylab="Voltage",xlab="datetime")



plot(dataset[[1]],dataset[[6]],type="l",ylab="Energy sub metering",xlab="")
lines(dataset[[1]],dataset[[7]],col="red")
lines(dataset[[1]],dataset[[8]],col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"))

plot(dataset[[1]],dataset[[3]],type="l",xlab="datetime",ylab="Global_reactive_power")


dev.off()





