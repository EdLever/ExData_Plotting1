household_power_consumption <- 
  read.csv("C:/Users/Eduardo/Desktop/Coursera/household_power_consumption.txt", 
  sep=";", stringsAsFactors=FALSE)
a <- filter(household_power_consumption, Date == "01/02/2007" | Date == "2/2/2007")
            
par(mar = c(4,4,4,4))
hist(a$Global_active_power, breaks = 12, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (Kilowatts)")
dev.copy(png , file = "plot1.png")
dev.off()
