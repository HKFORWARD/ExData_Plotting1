#Set work dirrectory and reading dataset
setwd("/home/kun/Dropbox/Study/Coursera - Data Science/04 - Exploratory Data Analysis/Week1/Assignment")

assignment_set <- read.table("household_power_consumption.txt", header=TRUE, 
                             sep = ";", na.strings="?", stringsAsFactors = FALSE)

#subsetting
assignment_set2 <- assignment_set[assignment_set$Date %in% c("1/2/2007","2/2/2007") ,]

#Code for Plot3
#Creates plot of date/time v Sub metering 1 data
par(mfrow = c(1, 1))
assignment_set2$Sub_metering_1 <- as.numeric(as.character(assignment_set2$Sub_metering_1))
assignment_set2$Sub_metering_2 <- as.numeric(as.character(assignment_set2$Sub_metering_2))
assignment_set2$Sub_metering_3 <- as.numeric(as.character(assignment_set2$Sub_metering_3))

assignment_set2$Voltage <- as.numeric(as.character(assignment_set2$Voltage))

plot(strptime(assignment_set2$Timestamp, "%d/%m/%Y %H:%M:%S"), 
     assignment_set2$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")

#Adds line graph for date/time v Sub metering 2 data in red
lines(strptime(assignment_set2$Timestamp, "%d/%m/%Y %H:%M:%S"), 
      assignment_set2$Sub_metering_2, type = "l", col = "red" )

#Adds line graph for date/time v Sub metering 3 data in blue
lines(strptime(assignment_set2$Timestamp, "%d/%m/%Y %H:%M:%S"), 
      assignment_set2$Sub_metering_3, type = "l", col = "blue" )

#Adds legend to graph
legend("topright", lty= 1, col = c("Black", "red", "blue"), 
       legend = c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
