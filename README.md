In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S smartphone was retrieved, worked with, and cleaned, to prepare a tidy data that can be used for later analysis.

This repository contains the following files:

- `README.md`, this file, which provides an overview of the data set and how it was created.
- `TidyDataset.txt`, which contains the data set.
- `CodeBook.md`, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data).
- `run_analysis.R`, the R script that was used to create the data set 

Training and test data were first merged together to create one data set, then the measurements on the mean and standard deviation were extracted for each measurement (79 variables extracted from the original 561), and then the measurements were averaged for each subject and activity, resulting in the final data set.

## Creating the data set

The R script `run_analysis.R` can be used to create the data set.
The script doesn't download the source dataset. I made the assumption that the source dataset is downloaded and extracted and the R script `run_analysis.R` is run from the same location the dataset is located at. The R script transforms source data set to produce the final data set by implementing the following steps (see the Code book for details, as well as the comments in the script itself):

- Merge the training and the test sets to create one data set (In the script, *MergeTrainAndTestDataSets* function performs this task).
- Extract only the measurements on the mean and standard deviation for each measurement (In the script, *GetMeanAndStdMeasurements* function performs this task).
- Use descriptive activity names to name the activities in the data set (In the script, *SetActivityNames* function performs this task).
- Appropriately label the data set with descriptive variable names (In the script, *SetVariablenames* function performs the above task).
- Create a second, independent tidy set with the average of each variable for each activity and each subject and write the data set to the `TidyDataset.txt` file (In the script, *MeanOfGroupedCols* function performs this task).

The `TidyDataset.txt` in this repository was created by running the `run_analysis.R` script using R