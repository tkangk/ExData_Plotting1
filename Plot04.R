# Plot04.R
setwd("G:/My Drive/Courses/programing_r/ExDataR01")

png(filename = "plot04.png")

par(mfrow=c(2,2))

plot(dat.1$Global_active_power,type = "l",
     xaxt="n", xlab=NULL, ylab="Global Active Power (kilowatts)")
axis.POSIXct(1, dat.1$Time, 
             format="%a", labels = TRUE)

plot(dat.1$Voltage, type = "l",
     xaxt="n", xlab="DateTime", 
     ylab="Voltage")
axis.POSIXct(1, dat.1$Time, 
             format="%a", labels = TRUE)


plot(dat.1$Sub_metering_1,
     type = "l",
     xaxt="n", ylab="Energy sub metering")
axis.POSIXct(1, dat.1$Time, 
             format="%a", labels = TRUE)
lines(dat.1$Sub_metering_2, col="red")
lines(dat.1$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,lwd=2,col=c("black","red","blue"),
       ncol=1,bty="n",cex=0.8,
       text.col=c("black","red","blue"),
       inset=0.01)

plot(dat.1$Global_reactive_power, type = "l",
     xaxt="n", xlab="DateTime", 
     ylab="Global_reactive_power")
axis.POSIXct(1, dat.1$Time, 
             format="%a", labels = TRUE)
