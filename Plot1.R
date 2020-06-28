# Read data
energydata <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Set date format
energydata[,"Date"] <- as.Date(data[,"Date"],format = "%d/%m/%Y")

# Filter data
subsetdata <- subset(data,Date == "2007-02-01" | Date == "2007-02-02")

# Convert string to numeric format
GlobalPower <- suppressWarnings(as.numeric(sdata[,"Global_active_power"]))

# Make and save plot
png("plot1.png",width = 480, height = 480)
hist(GlobalPower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
