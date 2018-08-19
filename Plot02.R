# Plot02.R
setwd("G:/My Drive/Courses/programing_r/ExDataR01")

png(filename = "plot02.png")
plot(dat.1$Global_active_power,type = "l",
     xlab=NULL, 
     ylab="Global Active Power (kilowatts)",
     xaxt="n")
axis.POSIXct(1, at=seq(dat.1$Time[1], dat.1$Time[2800], by="day"), 
             format="%a", labels = TRUE)

