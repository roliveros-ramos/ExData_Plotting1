
datos = read.csv("HPC_assignment1.csv")

graphics.off()

par(mfrow=c(2,2))

# Figure (1,1)
plot(datos$Global_active_power, type="l", axes=FALSE,
     xlab="", ylab="Global Active Power")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, las=2)
box()

# Figure (1,2)
plot(datos$Voltage, type="l", axes=FALSE,
     xlab="datetime", ylab="Voltage")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()

# Figure (2,1)

plot(datos$Sub_metering_1, type="l", axes=FALSE,
     xlab="", ylab="Energy sub metering")
lines(datos$Sub_metering_2, col="red")
lines(datos$Sub_metering_3, col="blue")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, las=2)
box()

legend("topright", bty="n", inset=c(0,-0.06),
       legend = paste0("Sub_metering_",1:3),
       col=c("black", "red", "blue"), lty=1,
       y.intersp=0.3, cex=0.5)

# Figure (2,2)

plot(datos$Global_reactive_power, type="l", axes=FALSE,
     xlab="datetime", ylab="Global_reactive_power")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2)
box()

dev.copy(png, file="plot4.png", width = 480, height = 480)
dev.off()
