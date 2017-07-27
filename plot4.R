source ('Load_data.R')


myPlot2 <- function () {
    plot(dt$dateTime, dt$Global_active_power, pch = NA, 
         xlab = '', ylab = 'Global Active Power')
    lines(dt$dateTime, dt$Global_active_power)
}
myPlot3 <- function () {
    plot(dt$dateTime, dt$Sub_metering_1, pch = NA, 
         xlab = '', ylab = 'Energy sub metering')
    lines(dt$dateTime, dt$Sub_metering_1)
    lines(dt$dateTime, dt$Sub_metering_2, col = 'red')
    lines(dt$dateTime, dt$Sub_metering_3, col = 'blue')
    legend ('topright', names(dt)[7:9],
            lty = rep(1, 3), col = c('black', 'red', 'blue'))
}

myPlot4a <- function() {
    plot(dt$dateTime, dt$Voltage, pch = NA, 
         xlab = '', ylab = 'Voltage')
    lines(dt$dateTime, dt$Voltage)
}

myPlot4b <- function() {
    plot(dt$dateTime, dt$Global_reactive_power, pch = NA, 
         xlab = '', ylab = 'Global Rective Power')
    lines(dt$dateTime, dt$Global_reactive_power)
}


myPlot <- function () {
    par(mfcol=c(2,2))
    myPlot2()
    myPlot3()
    myPlot4a()
    myPlot4b()
}

myPlot()

png('plot4.png')
myPlot ()
dev.off()