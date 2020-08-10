#read data
setwd("C:/Users/94979/Desktop")
data<- read.table(file="household_power_consumption.txt",header = T,sep = ";")
data$Date<-as.character(data$Date)
data<-subset(data,data$Date=="2/2/2007"|data$Date== "1/2/2007")
data$Global_active_power<-as.numeric(setdata$Global_active_power)


#plot2
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

png(filename = 'plot2.png', width = 480, height = 480, units='px')
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(data$DateTime, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()
