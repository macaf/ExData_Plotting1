house=read.table("C:/Users/pc/Desktop/Python/household_power_consumption.txt", sep=";",header = T,stringsAsFactors=FALSE)

View(house)
house$Global_active_power=as.numeric(house$Global_active_power)
house$newdate <- with(house, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

#Subset datebase
power=subset(house,newdate>="2007-02-01" & newdate<="2007-02-03")

#Third Plot
png("rplot3.png")
plot(power$newdate,power$Sub_metering_1,type="l",main=" ",xlab=" ",ylab="Energy sub meeting")
points(power$newdate,power$Sub_metering_2,type="l",col="red")
points(power$newdate,power$Sub_metering_3,type="l",col="blue")
leyenda=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",legend=leyenda,fill=c("black","red","blue"))
dev.off()