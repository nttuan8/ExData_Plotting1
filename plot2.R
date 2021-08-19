data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data <- subset(data, (Date == '1/2/2007') | (Date == '2/2/2007'))
size <- nrow(data)

png('figure/plot2.png')
plot(data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatts)', type='l', xaxt = "n")
axis(1, at = c(0, size/2, size), labels = c('Thu', 'Fri', 'Sat'))
dev.off()
