dataset<-read.table(dir()[1],header=TRUE,sep=";")[read.table(dir()[1],header=TRUE,sep=";")[[1]] %in% c("1/2/2007","2/2/2007"),]


dataset[[1]]<-paste(dataset[[1]],dataset[[2]])

# changing to date time format
dataset[[1]]<-strptime(dataset[[1]],"%d/%m/%Y %H:%M:%S")
dataset<-dataset[,-2]

dataset$Sub_metering_1<-as.numeric(as.character(dataset$Sub_metering_1))
dataset$Sub_metering_2<-as.numeric(as.character(dataset$Sub_metering_2))

png("plot3.png")


plot(dataset[[1]],dataset[[6]],type="l",ylab="Energy sub metering",xlab="")
lines(dataset[[1]],dataset[[7]],col="red")
lines(dataset[[1]],dataset[[8]],col="blue")

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"))

dev.off()




