source ('Load_data.R')

myPlot <- function () {
    plot(dt$dateTime, dt$Sub_metering_1, pch = NA, 
         xlab = '', ylab = 'Energy sub metering')
    lines(dt$dateTime, dt$Sub_metering_1)
    lines(dt$dateTime, dt$Sub_metering_2, col = 'red')
    lines(dt$dateTime, dt$Sub_metering_3, col = 'blue')
    legend ('topright', names(dt)[7:9],
            lty = rep(1, 3), col = c('black', 'red', 'blue'))
}

myPlot()


png('plot3.png')
myPlot ()
dev.off()