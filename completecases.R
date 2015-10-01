complete <- function(directory, id = 1:332)
    {
     #list all csv files in a directory
    
     files <- dir (path = directory,pattern="*.csv", full.names = TRUE)
     for ( i in id)
         {
            airpollution <- read.csv(files[i])
            c <- sum(complete.cases(airpollution))
            frame <- data.frame(id = 1, nobs = c)
            
     }
     
     print (frame)
}