# Assumptions : 
# archive: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# has been downloaded and unzipped to the current working directory
# This function will output a dataset fname to the current working directory.
createTidyData <- function(fname){

    # load in feature  names and activity labels
      features <- read.table("features.txt", quote="\"")
      varNames = features[,2]
      activity_labels <- read.table("activity_labels.txt", quote="\"",col.names=c("ActivityId", "ActivityName"))
      activity_labels$ActivityName <- as.factor(activity_labels$ActivityName)

    # combine train and test data
      subjectTrain <- read.table("train/subject_train.txt", quote="\"",col.names="subjectId")
      subjectTest  <- read.table("test/subject_test.txt",col.names="subjectId")
      subjects <- rbind(subjectTrain,subjectTest)
      t1 <- read.table("train/X_train.txt")
      t2 <- read.table("test/X_test.txt")
      X <- rbind(t1, t2)
      t1 <- read.table("train/y_train.txt")
      t2 <- read.table("test/y_test.txt")
      Y <- rbind(t1,t2)

    # add names
      names(X) <- varNames;
      names(Y) <- "ActivityId"

    # select only mean and std  columns
      cols <- grep(".*mean\\(\\)|.*std\\(\\)", varNames)
      X<-X[,cols]

    # combine variables and results adding labels and subjects
      data <- cbind(Y,X)
      datamerged <- merge(data,activity_labels)
      datamerged$Subject <- subjects$subjectId

    # calculate mean of selected cols and reshape
      library(reshape2)
      id_vars = c("ActivityId", "ActivityName", "Subject")
      measure_vars = setdiff(colnames(datamerged), id_vars)
      melted_data <- melt(datamerged, id=id_vars, measure.vars=measure_vars)
      tidyData <- dcast(melted_data, ActivityName + Subject ~ variable, mean)

    # write out data
    write.table(tidyData, fname)
}
