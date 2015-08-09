##   function for the first plot of the 1st Assignment of the 
##   Coursera course 'Exploratory Data Analysis'

plot2 <- function()   {

  library(dplyr)
  library(graphics)
  library(grDevices)

## reading data

  fileName<-"C:/Users/schaink/Documents/coursera/Exploratory Data Analysis/household_power_consumption.txt"
  colCL<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
  data_household=read.table(fileName, header=TRUE, sep=";",colClasses=colCL,na.strings="?")
  
##  print((data_household[,1]))
  print(colnames(data_household))

## select the data from 1/2/2007 and 2/2/2007

  Dates<-c("1/2/2007","2/2/2007")

  print(class(Dates[2]))

  sd1<-Dates[1]
  sd2<-Dates[2]

  selected_data<-filter(data_household,(Date==sd1 | Date==sd2))    
  

## plotting the graph


  png(filename = "plot2.png", width=480, height=480,units="px",
                 bg="white",type="windows",restoreConsole=TRUE)

   GAP<-selected_data$Global_active_power
  
   Time<-as.POSIXct(paste(selected_data$Date,selected_data$Time),format="%d/%m/%Y %H:%M:%S")

##   print(head(Time))
##   print(tail(Time))

   plot(Time,GAP,type="l",col=" black",xlab="",ylab="Global Active Power")
   

   dev.off()

  
  
}