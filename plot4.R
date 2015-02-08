household_power_consumption <- 
  read.csv("C:/Users/Eduardo/Desktop/Coursera/household_power_consumption.txt", 
           sep=";", stringsAsFactors=FALSE)
a <- filter(household_power_consumption, Date == "1/2/2007" 
            | Date == "2/2/2007")

a <- mutate(a , DateTime = paste(Date , Time))
a$DateTime <- dmy_hms(a$DateTime)

par( mfrow = c(2,2))
par(mar=c(3.8, 3.8, 3.8, 3.8))
plot(a$DateTime, a$Global_active_power, type = 'l',
     ylab = "Global Active Power", xlab ="")
plot(a$DateTime, a$Voltage, type ="l", ylab = "Voltage", xlab = "datetime")

plot(a$DateTime , a$Sub_metering_1, type = "l" , col = "black",
     ylab = "Energy sub meeting" , xlab = "")
lines(a$DateTime , a$Sub_metering_2 , type = "l", col = "red")
lines(a$DateTime , a$Sub_metering_3 , type = "l", col = "blue")
legend("topright", col = c("black","red", "blue"), lwd = "1.5", bty = "n",
       cex = .7,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


plot(a$DateTime, a$Global_reactive_power, type ="l", ylab ="Global_reactive_power"
     , xlab ="datetime")
