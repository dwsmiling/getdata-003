run_Analysis.R is an R script that creates a dataset using the raw data downloaded from 

archive: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and explained at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

It takes one parameter string (fname).
It assumes that the archive has been downloaded and unzipped to the current working directory

This function will output a dataset fname to the current working directory.

tidyData.txt represents the output of run_Analysis.R with fname: 'tinyData.txt'

codeBook.md explains the contents of tidyData.txt
