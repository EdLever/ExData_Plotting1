household_power_consumption <- 
  read.csv("C:/Users/Eduardo/Desktop/Coursera/household_power_consumption.txt", 
           sep=";", stringsAsFactors=FALSE)
a <- filter(household_power_consumption, Date == "1/2/2007" 
            | Date == "2/2/2007")

a <- mutate(a , DateTime = paste(Date , Time))
a$DateTime <- dmy_hms(a$DateTime)

par( mar = c(3,5,1,1))
plot(a$DateTime, a$Global_active_power, type = 'l',
     ylab = "Global Active Power (Kilowatts)", xlab ="")
