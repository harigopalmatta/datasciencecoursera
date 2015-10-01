corr <- function(directory, threshold = 0) 
    {
      files <- dir (path = directory,pattern="*.csv", full.names = TRUE)
      
      dat <- numeric()
      
      for ( i in 1:length(files) )
      {
          df <- read.csv(files[i])
          csum <- sum((complete.cases(df[["sulfate"]])) & (complete.cases(df[["nitrate"]])))
          if(csum > threshold)
          {
            df1 <- df[which(complete.cases(df$sulfate)), ]
            df2 <-  df1[which(complete.cases(df1$nitrate)), ]
            
            dat <- c(dat, cor(df2[["sulfate"]], df2[["nitrate"]]))
            
          }
          
      }
      
      dat
      
      
}