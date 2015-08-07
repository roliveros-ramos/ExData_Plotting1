require(lubridate)

datos = read.csv("household_power_consumption.txt", sep=";")

ind = dmy(datos$Date) %in% ymd("2007-02-01", "2007-02-02")

datos = datos[ind, ]

write.csv(datos, "HPC_assignment1.csv", row.names=FALSE)

