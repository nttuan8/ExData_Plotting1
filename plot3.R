data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data <- subset(data, (Date == '1/2/2007') | (Date == '2/2/2007'))
size <- nrow(data)

png('figure/plot3.png')
with(data, {
  plot(Sub_metering_1, type='l', xlab = '', ylab = 'Energy sub metering', xaxt = "n", col = 'black')
  lines(Sub_metering_2, type='l', xaxt = "n", col = 'red')
  lines(Sub_metering_3, type='l', xaxt = "n", col = 'blue')
})
axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
legend('topright', lty=c(1, 1, 1), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"))
dev.off()
