dataset<-read.table(dir()[1],header=TRUE,sep=";")[read.table(dir()[1],header=TRUE,sep=";")[[1]] %in% c("1/2/2007","2/2/2007"),]


dataset[[1]]<-paste(dataset[[1]],dataset[[2]])

# changing to date time format
dataset[[1]]<-strptime(dataset[[1]],"%d/%m/%Y %H:%M:%S")
dataset<-dataset[,-2]
dataset$Global_active_power<-as.numeric(as.character(dataset$Global_active_power))

png("plot2.png")

plot(dataset[[1]],dataset[[2]],type="l",ylab="Global Active Power (kilowatts)",xlab="")

dev.off()