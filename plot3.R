#Always run the plot1 & plot2 firstly, hence you have everything you need for plot3
#plot for plot3 with base plot for Energy-sub-metering~Weekday.
#creating a blank table with no lines, and add three lines into it with a legend.

plot(table$Sub_metering_1~table$Weekday,xlab='',ylab='Energy sub metering',type='n')
lines(table$Sub_metering_1~table$Weekday, col='black')
lines(table$Sub_metering_2~table$Weekday, col='red')
lines(table$Sub_metering_3~table$Weekday, col='blue')
legend('topright',col=c('black','red','blue'),legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lwd=1)
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()
