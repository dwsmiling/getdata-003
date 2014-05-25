### Tidy Data Set Description:
- The data  represents data collected from the accelerometers from the Samsung Galaxy S smartphone.
- The Raw Data is obtained from the following sources:
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### The Tidy Data Set includes the following files:
    tidyData.txt : contains transformed data
    ReadMe.md    : 
    run_Analysis.R : transformation script
    codeBook.md  :


### The Tidy Data Set represents a transformation of the raw data as follows: 

    Merges the training and the test sets to create one data set.
    Extracts only the  mean and standard deviation measurements.
    Calculates the mean of the selected measurements for each Activity and Subject

### Tidy Set : 
     
    (these represent the average of the  mean() and the std() features as described 
    is the raw data file features.txt)

     "ActivityName"
     "Subject" 
     "tBodyAcc-mean()-X" 
     "tBodyAcc-mean()-Y" 
     "tBodyAcc-mean()-Z" 
     "tBodyAcc-std()-X" 
     "tBodyAcc-std()-Y" 
     "tBodyAcc-std()-Z" 
     "tGravityAcc-mean()-X" 
     "tGravityAcc-mean()-Y" 
     "tGravityAcc-mean()-Z" 
     "tGravityAcc-std()-X" 
     "tGravityAcc-std()-Y" 
     "tGravityAcc-std()-Z" 
     "tBodyAccJerk-mean()-X" 
     "tBodyAccJerk-mean()-Y" 
     "tBodyAccJerk-mean()-Z" 
     "tBodyAccJerk-std()-X" 
     "tBodyAccJerk-std()-Y" 
     "tBodyAccJerk-std()-Z" 
     "tBodyGyro-mean()-X" 
     "tBodyGyro-mean()-Y" 
     "tBodyGyro-mean()-Z" 
     "tBodyGyro-std()-X" 
     "tBodyGyro-std()-Y" 
     "tBodyGyro-std()-Z" 
     "tBodyGyroJerk-mean()-X" 
     "tBodyGyroJerk-mean()-Y" 
     "tBodyGyroJerk-mean()-Z" 
     "tBodyGyroJerk-std()-X" 
     "tBodyGyroJerk-std()-Y" 
     "tBodyGyroJerk-std()-Z" "
     tBodyAccMag-mean()" 
     "tBodyAccMag-std()" 
     "tGravityAccMag-mean()" 
     "tGravityAccMag-std()" 
     "tBodyAccJerkMag-mean()" 
     "tBodyAccJerkMag-std()" 
     "tBodyGyroMag-mean()" 
     "tBodyGyroMag-std()" 
     "tBodyGyroJerkMag-mean()" 
     "tBodyGyroJerkMag-std()" 
     "fBodyAcc-mean()-X" 
     "fBodyAcc-mean()-Y" 
     "fBodyAcc-mean()-Z" 
     "fBodyAcc-std()-X" 
     "fBodyAcc-std()-Y" 
     "fBodyAcc-std()-Z" 
     "fBodyAccJerk-mean()-X" 
     "fBodyAccJerk-mean()-Y" 
     "fBodyAccJerk-mean()-Z" 
     "fBodyAccJerk-std()-X" 
     "fBodyAccJerk-std()-Y" 
     "fBodyAccJerk-std()-Z" 
     "fBodyGyro-mean()-X" 
     "fBodyGyro-mean()-Y" 
     "fBodyGyro-mean()-Z" 
     "fBodyGyro-std()-X" 
     "fBodyGyro-std()-Y" 
     "fBodyGyro-std()-Z" 
     "fBodyAccMag-mean()" 
     "fBodyAccMag-std()" 
     "fBodyBodyAccJerkMag-mean()" 
     "fBodyBodyAccJerkMag-std()" 
     "fBodyBodyGyroMag-mean()" 
     "fBodyBodyGyroMag-std()" 
     "fBodyBodyGyroJerkMag-mean()" 
     "fBodyBodyGyroJerkMag-std()"

### Data Transformation Steps

see run_Analysis.R

