house=read.table("C:/Users/pc/Desktop/Python/household_power_consumption.txt", sep=";",header = T,stringsAsFactors=FALSE)

View(house)
house$Global_active_power=as.numeric(house$Global_active_power)
house$newdate <- with(house, as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"))

#Subset datebase
power=subset(house,newdate>="2007-02-01" & newdate<="2007-02-03")

#Second Plot
png("rplot2.png")
with(power,plot(newdate,Global_active_power,type="l",main=" ",xlab=" ",ylab="Global Active Power (kilowatts)"))
dev.off()