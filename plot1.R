data <- read.table('data/household_power_consumption.txt', sep=';', header = TRUE)
data <- subset(data, (Date == '1/2/2007') | (Date == '2/2/2007'))
size <- nrow(data)

png('figure/plot1.png')
data$Global_active_power <- as.numeric(data$Global_active_power)
with(data, hist(Global_active_power, main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', col = 'red'))
dev.off()
