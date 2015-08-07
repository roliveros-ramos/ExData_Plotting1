
datos = read.csv("HPC_assignment1.csv")

graphics.off()

plot(datos$Global_active_power, type="l", axes=FALSE,
     xlab="", ylab="Global Active Power (kilowatts)")

axis(1, at=c(1, 1441, 2880), labels = c("Thu", "Fri", "Sat"))
axis(2, las=2)
box()

dev.copy(png, file="plot2.png",  width = 480, height = 480)
dev.off()