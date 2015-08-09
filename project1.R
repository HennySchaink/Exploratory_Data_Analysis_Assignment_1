aa <- function()   {

  library(dplyr)
  library(graphics)
  library(grDevices)
  

  fileName<-"C:/Users/schaink/Documents/coursera/Exploratory Data Analysis/household_power_consumption.txt"
  colCL<-c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
  data_household=read.table(fileName, header=TRUE, sep=";",colClasses=colCL,na.strings="?")
  
##  print((data_household[,1]))
  print(colnames(data_household))
  
  Dates<-c("1/2/2007","2/2/2007")

  print(class(Dates[2]))
    
  sd1<-Dates[1]
  sd2<-Dates[2]

  selected_data<-filter(data_household,(Date==sd1 | Date==sd2))    
  
  print(head(selected_data))
##  print(tail(selected_data))

  
  hist(selected_data$Global_active_power,
         col=" red", main="Global Active Power",
         xlab="Global Active Power (kiloWatts)",ylab="Frequency",
         ylim="1200")
  
  
}