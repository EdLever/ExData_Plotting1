household_power_consumption <- 
  read.csv("C:/Users/Eduardo/Desktop/Coursera/household_power_consumption.txt", 
           sep=";", stringsAsFactors=FALSE)
a <- filter(household_power_consumption, Date == "1/2/2007" 
            | Date == "2/2/2007")

a <- mutate(a , DateTime = paste(Date , Time))
a$DateTime <- dmy_hms(a$DateTime)

par(mar=c(3, 5, 1, 1))
plot(a$DateTime , a$Sub_metering_1, type = "l" , col = "black",
     ylab = "Energy sub meeting" , xlab = "")
lines(a$DateTime , a$Sub_metering_2 , type = "l", col = "red")
lines(a$DateTime , a$Sub_metering_3 , type = "l", col = "blue")
legend("topright", col = c("black","red", "blue"), lwd = "1.5",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))