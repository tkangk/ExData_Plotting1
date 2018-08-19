# plot01.R 

png(filename = "plot01.png")
hist(dat.1$Global_active_power, main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     col = "red")

