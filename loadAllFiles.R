
#Returns a dataframe of all files of the correct format in a directory (only supports CSV format)
loadAllFiles <- function(directory = ".")
{
  #List all files of correct format
  files <- list.files(directory, pattern = "*.csv")
  
  #Sentinel variable
  iterator = 0
  
  for( file in files )
  {
    #Increment sentinel variable
    iterator = iterator + 1
    
    #If first file: make it initial dataframe
    if(iterator == 1)
    {
      output_data <- data.frame(read.csv(file))
    }
    else
      #combine with previous data
    {
      buffer_data <- data.frame(read.csv(file))
      output_data <- rbind(output_data, buffer_data)
    }
  }
  
  #return combined dataframe
  output_data
}