# setwd("~/Coursera/Johns Hopkins Data Science Specializition/Exploratory data analysis/Week1")
library(dplyr)
library(data.table)

# Reading in the data
dataLoc <- './exdata_data_household_power_consumption/household_power_consumption.txt'
stRow <- 66637 # Found by opening data in Notepad++
endRow <- 69517

dataHeaders <- read.table(dataLoc, sep = ';',nrows = 1) %>%
    unlist () %>% as.character

dt <- read.table(dataLoc, sep = ';', col.names = dataHeaders, na.strings = '?',
                 colClasses = c(rep('character',2), rep('numeric',7)),
                 nrows = (endRow - stRow), skip = stRow) %>% 
    tbl_df

dt <-mutate (dt, dateTime = paste(dt$Date, dt$Time ))
dt$Date <- as.Date(dt$Date, format="%d/%m/%Y")
dt$Time <- strptime(dt$Time, format = "%H:%M:%S")
dt$dateTime <- strptime(dt$dateTime, format = "%d/%m/%Y %H:%M:%S")