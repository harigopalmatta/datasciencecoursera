pollutantmean <- function (directory, pollutant, id = 1:322)
{ 
    #list all csv files in a directory
    
    files <- dir (path = directory,pattern="*.csv", full.names = TRUE)
    
    #Empty data frame for data frame
    
    airpollution <- data.frame()
    
    for ( i in id ) 
    {
     airpollution <-  rbind(airpollution, read.csv(files[i], header = TRUE))
    }
    #Calcuate mean of user specified particulate matter
    
    mean(airpollution[[pollutant]], na.rm = TRUE)
}