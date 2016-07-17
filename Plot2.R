#Set work dirrectory and reading dataset
setwd("/home/kun/Dropbox/Study/Coursera - Data Science/04 - Exploratory Data Analysis/Week1/Assignment")

assignment_set <- read.table("household_power_consumption.txt", header=TRUE, 
                             sep = ";", na.strings="?", stringsAsFactors = FALSE)

#subsetting
assignment_set2 <- assignment_set[assignment_set$Date %in% c("1/2/2007","2/2/2007") ,]

#Code for Plot2
# Creates graph of date/time vs global active power data
par(mfrow = c(1, 1))
assignment_set2$Global_reactive_power <- as.numeric(as.character(assignment_set2$Global_reactive_power))
assignment_set2$Timestamp <-paste(assignment_set2$Date, assignment_set2$Time)
plot(strptime(assignment_set2$Timestamp, "%d/%m/%Y %H:%M:%S"), assignment_set2$Global_active_power, 
     type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
