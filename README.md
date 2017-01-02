#specdata
<i>a coursera project</i>

###Data Files
???.csv format

Contains tabular data in the form: Date, Sulphate, Nitrate, ID
Date - Time sample was recorded
Sulphate/Nitrate - amount of pollutant present
ID - the dataset/file the data originates from

###Function Files
<b>complete.R</b>

<i>Returns the amount of complete cases in a dataset</i>


<b>corr.R</b>

<i>Returns a vector of correlations for datasets where number of complete datapoints are over the threshold</i>


<b>extractComplete.R</b>

<i>Extracts complete cases of specified data-set</i>


<b>findData.R</b>

<i>Returns dataset of specified ID</i>


<b>loadAllFiles.R</b>

<i>Returns a dataframe of all files of the correct format in a directory (only supports CSV format)</i>


<b>pollutantmean.R</b>

<i>Returns the Mean of a pullutant type accross a certain directory, ignoring NA values</i>

