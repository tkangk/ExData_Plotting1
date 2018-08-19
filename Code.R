# set up the working directory
setwd("G:/My Drive/Courses/programing_r/ExDataR01")

# double check working directory
getwd()

# unzip data to working directory
unzip("G:/My Drive/Courses/programing_r/Fhousehold_power_consumption.zip")

library(data.table)

# read data
dat<-fread("household_power_consumption.txt")
# view data and check the structure
head(dat, n=4)
str(dat)

# We will only be using data from the dates 2007-02-01 and 2007-02-02
dat.1<-dat[which(Date=='1/2/2007'|Date=='2/2/2007'),] # subset
# view data
head(dat.1)
str(dat.1)

# need to transfer variable classes
dat.1<-within(dat.1, {Global_active_power<-as.numeric(Global_active_power);
                      Global_reactive_power<-as.numeric(Global_reactive_power);
                      Voltage<-as.numeric(Voltage); 
                      Global_intensity<-as.numeric(Global_intensity);
                      Sub_metering_1<-as.numeric(Sub_metering_1); 
                      Sub_metering_2<-as.numeric(Sub_metering_2);
                      Date<-as.Date(Date, 
                              format=c("%d/%m/%Y"), 
                              tryFormats = c("%Y-%m-%d", "%Y/%m/%d"));
                      wk<-weekdays(Date);
                      Time<-strptime(paste(dat.1$Date, dat.1$Time),
                                     format = "%Y-%m-%d %H:%M:%S")})

