source ('Load_data.R')

myPlot <- function () {
    plot(dt$dateTime, dt$Global_active_power, pch = NA, 
         xlab = '', ylab = 'Global Active Power')
    lines(dt$dateTime, dt$Global_active_power)
}

myPlot()

png('plot2.png')
myPlot ()
dev.off()

