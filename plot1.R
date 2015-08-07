
datos = read.csv("HPC_assignment1.csv")

graphics.off()

hist(datos$Global_active_power, col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.copy(png, file="plot1.png",  width = 480, height = 480)
dev.off()
