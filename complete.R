#Returns the amount of complete cases in a dataset
complete <- function(directory = ".", id = 1:332, UI = TRUE, return = FALSE)
{
  #Load all csv files in directory
  if(is.null(allData)) allData <- loadAllFiles(directory)
  
  ##UI
  if(UI) cat("id","\t","nobs","\n")
  
  ##RETURN
  if(return) completeCases <- NULL
  
  #iterates through datasets
  for (ID in id)
  {
    DataSet <- findData(ID)
    
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
      if(sentinelNA == length(DataSet[1,])) sentinelComplete <- sentinelComplete + 1
    }
    
    ##UI
    if(UI) cat(ID, "\t", sentinelComplete, "\n")
    ##RETURN
    if(return) completeCases <- c(completeCases, sentinelComplete)
  }
  
  ##RETURN
  if(return) return(completeCases)
}
