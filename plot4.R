#Always run the plot1 & plot2 & plot3 firstly, hence you have everything you need for plot4
#you need to set up the par to plot 4 graphs in one png file.

par(mfrow=c(2,2), mar=c(4,4,2,1))

plot(table$Global_active_power~table$Weekday,xlab="",ylab="Global Active Power (kilowatts)",type="l")

plot(table$Voltage~table$Weekday,xlab="",ylab="Voltage (volt)",type="l")

plot(table$Sub_metering_1~table$Weekday,xlab='',ylab='Energy sub metering',type='n')
lines(table$Sub_metering_1~table$Weekday, col='black')
lines(table$Sub_metering_2~table$Weekday, col='red')
lines(table$Sub_metering_3~table$Weekday, col='blue')
legend('topright',col=c('black','red','blue'),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lwd=1)

plot(table$Global_reactive_power~table$Weekday,xlab="",ylab="Global Rective Power (kilowatts)",type="l")

dev.copy(png,"plot4.png", width=480, height=480)
dev.off()
