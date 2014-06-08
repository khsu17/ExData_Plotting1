##Plot 4
FileAddress <- ("C://Course Projects 1//")		# Download the dataset and unzip in the below folder. 
setwd(FileAddress)						# Set the working directory.
png(file = "plot4.png", width = 480, height = 480)	# Open PNG file device.
	data <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, dec=".", na.strings="?")
	mydata <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
	mydata$mytime <- strptime(paste(as.Date(mydata$Date, "%d/%m/%Y"), mydata$Time), format="%Y-%m-%d %H:%M:%S")
	par(mfrow = c(2,2))
	#4-1
	with(mydata, plot(mytime, Global_active_power, type="n", xlab="", ylab="Global Active Power"))
	with(mydata, lines(mytime, Global_active_power))
	#4-2
	with(mydata, plot(mytime, Voltage, type="n", xlab="datetime", ylab="Voltage"))
	with(mydata, lines(mytime, Voltage))
	#4-3
	with(mydata, plot(mytime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering"))
	with(mydata, lines(mytime, Sub_metering_1, col="black"))
	with(mydata, lines(mytime, Sub_metering_2, col="red"))
	with(mydata, lines(mytime, Sub_metering_3, col="blue"))
	legend("topright", legend=c("sub_metering_1","sub_metering_2","sub_metering_3"), bty="n", lty=1, lwd=1, col=c("black","red","blue"))
	#4-4
	with(mydata, plot(mytime, Global_reactive_power, type="n", xlab="datetime"))
	with(mydata, lines(mytime, Global_reactive_power))
dev.off()								# Close the PNG file device.