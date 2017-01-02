#Returns dataset of specified ID
findData <- function(ID)
{
  sentinel <- 0
  for (columns in allData[1,])
  {
    sentinel <- sentinel + 1
    
    if(sentinel==1) DataSet <- allData[,sentinel][allData$ID==ID]
    else DataSet <- cbind(DataSet, allData[,sentinel][allData$ID==ID])
  }
  
  DataSet
}
