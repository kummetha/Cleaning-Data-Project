The data set that this code book pertains to is located in the `TidyDataset.txt` file of this repository.

See the `README.md` file of this repository for background information on this data set.


## Data

The `TidyDataset.txt` data file is a text file, containing space-separated values.

The first row contains the names of the variables and the following rows contain the values of these variables. 

## Variables

Each row contains, for a given subject and activity, 79 averaged signal measurements.

### Identifiers

- `subjects`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements


The variables are of 3 types: acceleration measurements (variables containing `Accelerometer`), gyroscope measurements (variables containing `Gyroscope`) and Magnitudes of three-dimensional signals (variables containing `Magnitude`).

The measurements are classified in two domains:

- Time-domain signals (variables prefixed by `timeDomain`), resulting from the capture of accelerometer and gyroscope raw signals.

- Fast Fourier Transformed signals (variables prefixed by `FastFourierTransformed`), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometerMeanX`
	- `TimeDomainBodyAccelerometerMeanY`
	- `TimeDomainBodyAccelerometerMeanZ`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `timeDomainBodyAccelerometerStandardDeviationX`
	- `timeDomainBodyAccelerometerStandardDeviationY`
	- `timeDomainBodyAccelerometerStandardDeviationZ`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `timeDomainGravityAccelerometerMeanX`
	- `timeDomainGravityAccelerometerMeanY`
	- `timeDomainGravityAccelerometerMeanZ`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `TimeDomainGravityAccelerometerStandardDeviationX`
	- `TimeDomainGravityAccelerometerStandardDeviationY`
	- `TimeDomainGravityAccelerometerStandardDeviationZ`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometerJerkMeanX`
	- `TimeDomainBodyAccelerometerJerkMeanY`
	- `TimeDomainBodyAccelerometerJerkMeanZ`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `TimeDomainBodyAccelerometerJerkStandardDeviationX`
	- `TimeDomainBodyAccelerometerJerkStandardDeviationY`
	- `TimeDomainBodyAccelerometerJerkStandardDeviationZ`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeMeanX`
	- `TimeDomainBodyGyroscopeMeanY`
	- `TimeDomainBodyGyroscopeMeanZ`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeStandardDeviationX`
	- `TimeDomainBodyGyroscopeStandardDeviationY`
	- `TimeDomainBodyGyroscopeStandardDeviationZ`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeJerkMeanX`
	- `TimeDomainBodyGyroscopeJerkMeanY`
	- `TimeDomainBodyGyroscopeJerkMeanZ`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `TimeDomainBodyGyroscopeJerkStandardDeviationX`
	- `TimeDomainBodyGyroscopeJerkStandardDeviationY`
	- `TimeDomainBodyGyroscopeJerkStandardDeviationZ`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `TimeDomainBodyAccelerometerMagnitudeMean`
	- `TimeDomainBodyAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `TimeDomainGravityAccelerometerMagnitudeMean`
	- `TimeDomainGravityAccelerometerMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `TimeDomainBodyAccelerometerJerkMagnitudeMean`
	- `TimeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `TimeDomainBodyGyroscopeMagnitudeMean`
	- `TimeDomainBodyGyroscopeMagnitudeStandardDeviation`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `TimeDomainBodyGyroscopeJerkMagnitudeMean`
	- `TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Fast Fourier Transformed signals

- Average Fast Fourier Transformed body acceleration in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerMeanX`
	- `FastFourierTransformedBodyAccelerometerMeanY`
	- `FastFourierTransformedBodyAccelerometerMeanZ`

- Standard deviation of the Fast Fourier Transformed body acceleration in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerStandardDeviationX`
	- `FastFourierTransformedBodyAccelerometerStandardDeviationY`
	- `FastFourierTransformedBodyAccelerometerStandardDeviationZ`

- Weighted average of the frequency components of the Fast Fourier Transformed body acceleration in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerMeanFrequencyX`
	- `FastFourierTransformedBodyAccelerometerMeanFrequencyY`
	- `FastFourierTransformedBodyAccelerometerMeanFrequencyZ`

- Average Fast Fourier Transformed body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerJerkMeanX`
	- `FastFourierTransformedBodyAccelerometerJerkMeanY`
	- `FastFourierTransformedBodyAccelerometerJerkMeanZ`

- Standard deviation of the Fast Fourier Transformed body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerJerkStandardDeviationX`
	- `FastFourierTransformedBodyAccelerometerJerkStandardDeviationY`
	- `FastFourierTransformedBodyAccelerometerJerkStandardDeviationZ`

- Weighted average of the frequency components of the Fast Fourier Transformed body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `FastFourierTransformedBodyAccelerometerJerkMeanFrequencyX`
	- `FastFourierTransformedBodyAccelerometerJerkMeanFrequencyY`
	- `FastFourierTransformedBodyAccelerometerJerkMeanFrequencyZ`

- Average Fast Fourier Transformed body angular velocity in the X, Y and Z directions:

	- `FastFourierTransformedBodyGyroscopeMeanX`
	- `FastFourierTransformedBodyGyroscopeMeanY`
	- `FastFourierTransformedBodyGyroscopeMeanZ`

- Standard deviation of the Fast Fourier Transformed body angular velocity in the X, Y and Z directions:

	- `FastFourierTransformedBodyGyroscopeStandardDeviationX`
	- `FastFourierTransformedBodyGyroscopeStandardDeviationY`
	- `FastFourierTransformedBodyGyroscopeStandardDeviationZ`

- Weighted average of the frequency components of the Fast Fourier Transformed body angular velocity in the X, Y and Z directions:

	- `FastFourierTransformedBodyGyroscopeMeanFrequencyX`
	- `FastFourierTransformedBodyGyroscopeMeanFrequencyY`
	- `FastFourierTransformedBodyGyroscopeMeanFrequencyZ`

- Average, standard deviation, and weighted average of the frequency components of the Fast Fourier Transformed magnitude of body acceleration:

	- `FastFourierTransformedBodyAccelerometerMagnitudeMean`
	- `FastFourierTransformedBodyAccelerometerMagnitudeStandardDeviation`
	- `FastFourierTransformedBodyAccelerometerMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the Fast Fourier Transformed magnitude of body acceleration jerk (derivation of the acceleration in time):

	- `FastFourierTransformedBodyAccelerometerJerkMagnitudeMean`
	- `FastFourierTransformedBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `FastFourierTransformedBodyAccelerometerJerkMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the Fast Fourier Transformed magnitude of body angular velocity:

	- `FastFourierTransformedBodyGyroscopeMagnitudeMean`
	- `FastFourierTransformedBodyGyroscopeMagnitudeStandardDeviation`
	- `FastFourierTransformedBodyGyroscopeMagnitudeMeanFrequency`

- Average, standard deviation, and weighted average of the frequency components of the Fast Fourier Transformed magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- `FastFourierTransformedBodyGyroscopeJerkMagnitudeMean`
	- `FastFourierTransformedBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `FastFourierTransformedBodyGyroscopeJerkMagnitudeMeanFrequency`

## Transformations


The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set (In the script, *MergeTrainAndTestDataSets* function performs this task).
1. The measurements on the mean and standard deviation (i.e. signals containing the strings `mean` and `std`) were extracted for each measurement, and the others were discarded (In the script, *GetMeanAndStdMeasurements* function performs this task).
1. The activity identifiers (originally coded as integers between 1 and 6) were replaced with descriptive activity names (In the script, *SetActivityNames* function performs this task).
1. The variable names were replaced with descriptive variable names (e.g. `tBodyAcc-mean()-X` was expanded to `TimeDomainBodyAccelerometerMeanX`), using the following set of rules:
	- Special characters (i.e. `(`, `)`, and `-`) were removed
	- The initial `f` and `t` were expanded to `FastFourierTransformed` and `TimeDomain` respectively.
	- `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` were replaced with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
	- Replaced `BodyBody` with `Body`.
(In the script, *SetVariablenames* function performs the above task).
1. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject (In the script, *MeanOfGroupedCols* function performs this task).

The collection of the source data and the transformations listed above were implemented by the `run_analysis.R` R script.