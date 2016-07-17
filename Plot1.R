#Set work dirrectory and reading dataset
setwd("/home/kun/Dropbox/Study/Coursera - Data Science/04 - Exploratory Data Analysis/Week1/Assignment")

assignment_set <- read.table("household_power_consumption.txt", header=TRUE, 
                             sep = ";", na.strings="?", stringsAsFactors = FALSE)

#subsetting
assignment_set2 <- assignment_set[assignment_set$Date %in% c("1/2/2007","2/2/2007") ,]

#Code for Plot1
#Create histogram for Global Active Power
par(mfrow = c(1, 1))
assignment_set2$Global_active_power <- as.numeric(as.character(assignment_set2$Global_active_power))
hist(assignment_set2$Global_active_power, col="red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")

