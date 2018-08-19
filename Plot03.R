# Plot03.R
setwd("G:/My Drive/Courses/programing_r/ExDataR01")

png(filename = "plot03.png")

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

