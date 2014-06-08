##Plot 2
FileAddress <- ("C://Course Projects 1//")		# Download the dataset and unzip in the below folder. 
setwd(FileAddress)						# Set the working directory.
png(file = "plot2.png", width = 480, height = 480)	# Open PNG file device.
	data <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, dec=".", na.strings="?")
	mydata <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
	mydata$mytime <- strptime(paste(as.Date(mydata$Date, "%d/%m/%Y"), mydata$Time), format="%Y-%m-%d %H:%M:%S")
	par(mfrow = c(1,1))
	with(mydata, plot(mytime, Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)"))
	with(mydata, lines(mytime, Global_active_power))
dev.off()								# Close the PNG file device.