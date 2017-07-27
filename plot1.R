source ('Load_data.R')

myPlot <- function () {
    hist(dt$Global_active_power, col = 'red',
         main = 'Global Active Power',
         xlab = 'Global Active Power killowatts')
}

myPlot()

png('plot1.png')
myPlot ()
dev.off()

