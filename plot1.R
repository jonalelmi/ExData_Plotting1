library(stringr)

#load the dataset and subsets on the days 2007-02-01 and 2007-02-02
df <- read.table('household_power_consumption.txt', sep=';', skip=1, col.names =c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), na.strings='?', colClasses= c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))
df <- subset(df, str_detect(Date, '^[12]/2/2007'))

png('plot1.png', width=480, height=480)
hist(df$Global_active_power, col='red', xlab='Global Active Power (kilowatts)', ylab='Frequency', main='Global Active Power')


dev.off()