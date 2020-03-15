#download the file and unzip it, sift out the missing values as "?")
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileurl, destfile = "expdataproject1.zip", method="curl")
unzip("expdataproject1.zip")
table <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
#use head(table) to check out the colnames of this dataframe. And we need to sift the column Date.

#we are going to subset the dates from 2007-2-1 to 2007-2-2 in the dataframe.
table$Date <- as.Date(table$Date, "%d/%m/%Y")
gl <- grepl("2007-02-01",table$Date) | grepl("2007-02-02",table$Date)
table <- table[gl,]

#Now lets start the plot for plot1 with the command hist, and save it to a png file with its format.
hist(table$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
