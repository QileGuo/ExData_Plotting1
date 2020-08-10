#read data
setwd("C:/Users/94979/Desktop")
data<- read.table(file="household_power_consumption.txt",header = T,sep = ";")
data$Date<-as.character(data$Date)
data<-subset(data,data$Date=="2/2/2007"|data$Date== "1/2/2007")
data$Global_active_power<-as.numeric(setdata$Global_active_power)

#plot3
png(filename = 'plot3.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l',col = 'black')
lines(data$DateTime, data$Sub_metering_2,type = 'l', col = 'red')
lines(data$DateTime, data$Sub_metering_3,type = 'l', col = 'blue')
legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
dev.off()
