#specdata
<i>a coursera project</i>

###Data Files
???.csv format

Contains tabular data in the form: Date, Sulphate, Nitrate, ID
Date - Time sample was recorded
Sulphate/Nitrate - amount of pollutant present
ID - the dataset/file the data originates from

###Function Files
complete.R
<i>Returns the amount of complete cases in a dataset</i>

corr.R
<i>Returns a vector of correlations for datasets where number of complete datapoints are over the threshold</i>

extractComplete.R
<i>Extracts complete cases of specified data-set</i>

findData.R
<i>Returns dataset of specified ID</i>

loadAllFiles.R
<i>Returns a dataframe of all files of the correct format in a directory (only supports CSV format)</i>

pollutantmean.R
<i>Returns the Mean of a pullutant type accross a certain directory, ignoring NA values</i>

