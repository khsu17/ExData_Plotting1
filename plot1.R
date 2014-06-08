## Plot 1
FileAddress <- ("C://Course Projects 1//")		# Download the dataset and unzip in the below folder. 
setwd(FileAddress)						# Set the working directory.
png(file = "plot1.png", width = 480, height = 480)	# Open PNG file device.
	data <- read.table("household_power_consumption.txt", header=T, sep=";", stringsAsFactors=F, dec=".", na.strings="?")
	mydata <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007", ]
	par(mfrow = c(1,1))
	hist(mydata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()								# Close the PNG file device.