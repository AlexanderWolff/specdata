#extracts complete cases of specified data-set 
extractComplete <- function(DataSet)
{
  #Keeps track of complete cases
  sentinelComplete <- 0
  
  #for each row
  for (DataInstance in 1:length(DataSet[,1]))
  {
    #Keeps track of how many datapoints are not NA
    sentinelNA <- 0
    
    #for each column
    for (DataPoint in 1:length(DataSet[1,]))
    {
      #If not NA: increment sentinel
      if(!is.na(DataSet[DataInstance, DataPoint])) sentinelNA <- sentinelNA + 1
    }
    
    #Check if all DataPoints are not NA
    if(sentinelNA == length(DataSet[1,]))
    {
      sentinelComplete <- sentinelComplete + 1
      
      #Grow list of complete cases
      if(sentinelComplete == 1) outputData <- DataSet[DataInstance,] 
      else outputData <- rbind(outputData, DataSet[DataInstance,])
    }
  }
  
  if(sentinelComplete>0) outputData
  else return(NULL)
}