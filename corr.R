#returns a vector of correlations for datasets where number of complete datapoints are over the threshold
corr <- function(directory = ".", threshold = 1)
{
  #Load all csv files in directory
  if(is.null(allData)) allData <<- loadAllFiles(directory)
  
  #Check number of complete cases in each set
  if(is.null(allComplete)) allComplete <<- complete(UI = FALSE, return = TRUE)
  
  #Keeps track of successfully thresholded datasets
  sentinelSet <- 0
  
  ##UI
  cat("\t",sum(allComplete>=threshold),"datasets\n")
  if(sum(allComplete>=threshold)==0 ) 
  {
    print("No dataset fit the given threshold")
    return(NULL)
  }
  
  #iterate through allData
  for (ID in 1:332)
  {
    
    #Compare against threshold
    if(allComplete[ID]>=threshold)
    {
      sentinelSet <- sentinelSet + 1
      
      #Extract complete cases
      filteredData <- extractComplete(findData(ID))
      
      #find correlation between Sulfate&Nitrate
      buffer <- cor(filteredData[,2], filteredData[,3])
      
      #Grow correlated data vector
      if(sentinelSet == 1) correlatedData <- buffer
      else correlatedData <- c(correlatedData, buffer)
    }
  }
  
  #Return correlated vector
  correlatedData
}

