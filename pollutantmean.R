## Returns the Mean of a pullutant type accross a certain directory, ignoring NA values
#directory: source directory 
#pollutant: type of pollutant {"sulfate" or "nitrate"} 
#id: monitor IDs (from ID vector) to use (IE. which file to use)
pollutantmean <- function(directory = ".", pollutant, id = 1:332)
{
  #Check if user input is correct
  if((pollutant != "sulfate")&&(pollutant!="nitrate")) return("Invalid pollutant name: choose either 'nitrate' or 'sulfate'")
  
  #Load all csv files in directory
  if(is.null(allData)) allData <- loadAllFiles(directory)
  
  #sentinel
  iterator = 0
  
  #Iterate through ID
  for(ID in id)
  {
    iterator = iterator + 1
    
    #If first file: make it initial dataset
    if(iterator == 1)
    {
      targetData <- allData[[pollutant]][allData$ID==ID]
    }
    else
      #combine with previous data
    {
      buffer_data <- allData[[pollutant]][allData$ID==ID]
      targetData <- c(targetData, buffer_data)
    }
  }
  
  #Remove all NA
  filteredData <- targetData[!is.na(targetData)]
  
  #Find mean
  meanData <- mean(filteredData)
  
  meanData
}

  
  