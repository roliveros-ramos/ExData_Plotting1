
datos = read.csv("HPC_assignment1.csv")

graphics.off()

plot(datos$Sub_metering_1, type="l", axes=FALSE,
     xlab="", ylab="Energy sub metering")
lines(datos$Sub_metering_2, col="red")
lines(datos$Sub_metering_3, col="blue")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, las=2)
box()

legend("topright", 
       legend = paste0("Sub_metering_",1:3),
       col=c("black", "red", "blue"), lty=1,
       y.intersp=0.5)

dev.copy(png, file="plot3.png",  width = 480, height = 480)
dev.off()