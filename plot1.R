#read data
setwd("C:/Users/94979/Desktop")
data<- read.table(file="household_power_consumption.txt",header = T,sep = ";")
data$Date<-as.character(data$Date)
data<-subset(data,data$Date=="2/2/2007"|data$Date== "1/2/2007")
data$Global_active_power<-as.numeric(setdata$Global_active_power)


#plot1
png(filename = 'plot1.png', width = 480, height = 480, units='px')
hist(data$Global_active_power,xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red')

dev.off()
