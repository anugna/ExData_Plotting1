dataset<-read.table(dir()[1],header=TRUE,sep=";")[read.table(dir()[1],header=TRUE,sep=";")[[1]] %in% c("1/2/2007","2/2/2007"),]

# changing to date format
dataset[[1]]<-strptime(dataset[[1]],"%d/%m/%Y")

png("plot1.png")

hist(as.numeric(as.character(dataset$Global_active_power)),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")

dev.off()