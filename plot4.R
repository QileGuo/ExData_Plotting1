
#read data
setwd("C:/Users/94979/Desktop")
data<- read.table(file="household_power_consumption.txt",header = T,sep = ";")
data$Date<-as.character(data$Date)
data<-subset(data,data$Date=="2/2/2007"|data$Date== "1/2/2007")
data$Global_active_power<-as.numeric(setdata$Global_active_power)

#plot4
png(filename = 'plot4.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL", locale = "english")
par(mfrow = c(2, 2))
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(data$DateTime, data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering',col='black', type = 'l')
lines(data$DateTime, data$Sub_metering_2, col = 'red',type = 'l')
lines(data$DateTime, data$Sub_metering_3, col = 'blue',type = 'l')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(data$DateTime, data$Global_reactive_power, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
dev.off()