
### This function merges the training and the test sets to create one data set.
MergeTrainAndTestDataSets <- function() 
{
  TrainSet <- GetTrainDataset()
  TestSet <- GetTestDataset()
  MergedDataSet <- rbind(TrainSet,TestSet)
  return(MergedDataSet)
}

### This function extracts only the measurements on the mean and standard deviation for each measurement.
GetMeanAndStdMeasurements <- function(MergedDataSet)
{
   MergedDataSet[,grepl("mean|std|activity|subjects",names(MergedDataSet))]
}

### This function sets descriptive activity names to name the activities in the data set
SetActivityNames <- function(Dataset)
{
  Activity_labels <- t(read.table("UCI HAR Dataset/activity_labels.txt"))
  oldValues <- Activity_labels[1,]
  newValues <- Activity_labels[2,]
  Activity <- Dataset[,"activity"]
  Activity[Activity %in% oldValues] <- newValues[match(Activity,oldValues,nomatch = 0)]
  Dataset[,"activity"] <- as.vector(Activity)
  return(Dataset)
}

### This function labels the data set with descriptive variable names.
SetVariablenames <- function(Dataset)
{
  # Remove special characters, expand abbreviations and clean up names
  old <- c("\\()|-|","^t","^f","Freq","Mag","Acc","Gyro","mean","std","BodyBody")
  new <- c("","Timedomain","FastFourierTransformed", "Frequency","Magnitude","Accelerometer","Gyroscope","Mean","StandardDeviation","Body")
  i <- 1
  while (i<=length(old)) 
  {
    names(Dataset) <- gsub(old[i],new[i],names(Dataset))
    i = i+1
  }
  return(Dataset)
}

### This function creates a tidy data set with the average of each variable for each activity and each subject.
MeanOfGroupedCols <- function(Dataset)
{
  i=1
  dataset <- data.frame()
  while (i<=30) 
  {
    agg <- aggregate(.~activity, Dataset[Dataset$subjects==as.character(i),],mean) 
    dataset <- rbind(dataset,agg)
    i=i+1
  }
  dataset <- dataset[,c(2,1,3:ncol(dataset))]
  write.table(dataset, file = "TidyDataset.txt", sep = " ", row.names = FALSE, quote = FALSE)
}

### This functions reads the train data from the files and returns the dataset to MergeTrainAndTestDataSets function
GetTrainDataset <- function()
{
  Train <- read.table("UCI HAR Dataset/train/X_train.txt")
  Activity <- setNames(read.table("UCI HAR Dataset/train/y_train.txt"),"activity")
  Subjects <- setNames(read.table("UCI HAR Dataset/train/subject_train.txt"),"subjects")
  Features <- t(read.table("UCI HAR Dataset/features.txt")[,2])
  Train <- setNames(Train,Features)
  Train <- cbind(Subjects,cbind(Activity,Train))
  return(Train)
}

### This functions reads the test data from the files and returns the dataset to MergeTrainAndTestDataSets function
GetTestDataset <- function()
{
  Test <- read.table("UCI HAR Dataset/test/X_test.txt")
  Activity <- setNames(read.table("UCI HAR Dataset/test/y_test.txt"),"activity")
  Subjects <- setNames(read.table("UCI HAR Dataset/test/subject_test.txt"),"subjects")
  Features <- t(read.table("UCI HAR Dataset/features.txt")[,2])
  Test <- setNames(Test,Features)
  Test <- cbind(Subjects,cbind(Activity,Test))
  return(Test)
}

mergedDataset <- MergeTrainAndTestDataSets()
meanAndstdMeasurements <- GetMeanAndStdMeasurements(mergedDataset)
withDescriptiveActivityNames <- SetActivityNames(meanAndstdMeasurements)
withDescriptiveVariableNames <- SetVariablenames(withDescriptiveActivityNames)
MeanOfGroupedCols(withDescriptiveVariableNames)

