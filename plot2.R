#Always run the plot1 firstly, hence you have already sifted the required datafram out.
#in plot 2 we need to create weekday for the x-lable unit, combines both the date and time.
#plot for plot2 with base plot for GAP~Weekdat.

table$Weekday <- as.POSIXct(paste(table$Date, table$Time))
plot(table$Global_active_power~table$Weekday, xlab="", ylab="Global Active Power (kilowatts)", type="l")
#by the way you could always use with function to get rid of calling table$.
#alternative: with(table, plot(Global_active_power~Weekday,xlab="",ylab="Global Active Power (kilowatts)",type="l"))
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
