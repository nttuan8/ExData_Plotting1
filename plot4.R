data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data <- subset(data, (Date == '1/2/2007') | (Date == '2/2/2007'))
size <- nrow(data)

png('figure/plot4.png')
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1))
with(data, {
  plot(data$Global_active_power, xlab = '', ylab = 'Global Active Power', type='l', xaxt = "n")
  axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
  plot(data$Voltage,  ylab = 'Voltage', xlab = 'datetime', type='l', xaxt = "n")
  axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
  plot(Sub_metering_1, type='l', xlab = '', ylab = 'Energy sub metering', xaxt = "n", col = 'black')
  axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
  lines(Sub_metering_2, type='l', xaxt = "n", col = 'red')
  lines(Sub_metering_3, type='l', xaxt = "n", col = 'blue')
  plot(data$Global_reactive_power, ylab = 'Global_reactive_power', xlab = 'datetime', type='l', xaxt = "n")
  axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
})
dev.off()
