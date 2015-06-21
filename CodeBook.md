## Original data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For more information about this dataset contact: activityrecognition@smartlab.ws

## Variables
 - subject - person that performed an activity
 - activity - selected from set {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}

| Variable  | Unit | Description  |
|---|---|---|
|subject    | none  | person that performed an activity  |
|activity   | category  | selected from set {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}  |
|tBodyAcc-mean()-X| m/s^2 | body acceleration in x direction - mean value |
|tBodyAcc-mean()-Y| m/s^2 | body acceleration in y direction - mean value |
|tBodyAcc-mean()-Z| m/s^2 | body acceleration in z direction - mean value |
|tGravityAcc-mean()-X| m/s^2 | gravity acceleration in x direction - mean value  |
|tGravityAcc-mean()-Y| m/s^2 | gravity acceleration in y direction - mean value  |
|tGravityAcc-mean()-Z| m/s^2 | gravity acceleration in z direction - mean value  |
|tBodyAccJerk-mean()-X| m/s^3 | derivative in time of body acceleration in x direction - mean value  |
|tBodyAccJerk-mean()-Y| m/s^3 | derivative in time of body acceleration in y direction - mean value  |
|tBodyAccJerk-mean()-Z| m/s^3 | derivative in time of body acceleration in z direction - mean value  |
|tBodyGyro-mean()-X| degree/s | angular speed in x direction - mean value |
|tBodyGyro-mean()-Y| degree/s | angular speed in y direction - mean value  |
|tBodyGyro-mean()-Z| degree/s | angular speed in z direction - mean value  |
|tBodyGyroJerk-mean()-X| degree/s^2 | derivative in time of angular speed in x direction - mean value  |
|tBodyGyroJerk-mean()-Y| degree/s^2 | derivative in time of angular speed in y direction - mean value  |
|tBodyGyroJerk-mean()-Z| degree/s^2 | derivative in time of angular speed in z direction - mean value  |
|tBodyAccMag-mean()| m/s^2 | magnitude of body acceleration - mean value  |
|tGravityAccMag-mean()| m/s^2 | magnitude of gravity acceleration - mean value  |
|tBodyAccJerkMag-mean()| m/s^3 | magnitude of derivative in time of body acceleration - mean value  |
|tBodyGyroMag-mean()| degree/s | magnitude of angular speed - mean value |
|tBodyGyroJerkMag-mean()| degree/s^2 | magnitude of derivative in time of angular speed - mean value |
|fBodyAcc-mean()-X| m/s^2 | amplitude of body acceleration in x direction - mean value |
|fBodyAcc-mean()-Y| m/s^2 | amplitude of body acceleration in y direction - mean value |
|fBodyAcc-mean()-Z| m/s^2 | amplitude of body acceleration in z direction - mean value |
|fBodyAcc-meanFreq()-X| Hz | mean frequency after FFT of body acceleration in x direction |
|fBodyAcc-meanFreq()-Y| Hz | mean frequency after FFT of body acceleration in y direction |
|fBodyAcc-meanFreq()-Z| Hz | mean frequency after FFT of body acceleration in z direction |
|fBodyAccJerk-mean()-X| m/s^3 | amplitude of derivative in time of body acceleration in x direction - mean value |
|fBodyAccJerk-mean()-Y| m/s^3 | amplitude of derivative in time of body acceleration in y direction - mean value |
|fBodyAccJerk-mean()-Z| m/s^3 | amplitude of derivative in time of body acceleration in z direction - mean value |
|fBodyAccJerk-meanFreq()-X| Hz | mean frequency after FFT of derivative in time of body acceleration in x direction |
|fBodyAccJerk-meanFreq()-Y| Hz | mean frequency after FFT of derivative in time of body acceleration in x direction |
|fBodyAccJerk-meanFreq()-Z| Hz | mean frequency after FFT of derivative in time of body acceleration in x direction |
|fBodyGyro-mean()-X| degree/s | amplitude of angular speed in x direction - mean value |
|fBodyGyro-mean()-Y| degree/s | amplitude of angular speed in y direction - mean value |
|fBodyGyro-mean()-Z| degree/s | amplitude of angular speed in z direction - mean value |
|fBodyGyro-meanFreq()-X| Hz | mean frequency after FFT of angular speed in x direction |
|fBodyGyro-meanFreq()-Y| Hz | mean frequency after FFT of angular speed in y direction |
|fBodyGyro-meanFreq()-Z| Hz | mean frequency after FFT of angular speed in z direction |
|fBodyAccMag-mean()| m/s^2 | amplitude of magnitude of body acceleration - mean value |
|fBodyAccMag-meanFreq()| Hz | mean frequency of magnitude of body acceleration |
|fBodyBodyAccJerkMag-mean()| m/s^3 | amplitude of derivative in time of body acceleration - mean value |
|fBodyBodyAccJerkMag-meanFreq()| Hz | mean frequency after FFT of derivative in time of magnitude of body acceleration |
|fBodyBodyGyroMag-mean()| degree/s | amplitude of angular speed - mean value |
|fBodyBodyGyroMag-meanFreq()| Hz | mean frequency after FFT of magnitude angular speed |
|fBodyBodyGyroJerkMag-mean()| degree/s^2 | amplitude of derivative in time of magnitude of angular speed - mean value |
|fBodyBodyGyroJerkMag-meanFreq()| Hz | mean frequency of derivative in time of magnitude of angular speed |

Remaining variables can be derived from previously described by replacing "mean value" by "standard deviation".


## Transformations applied
 - training and testing set were merged together
 - columns containing mean and standard deviation of measurements were extracted 
 - resulting table was joined with data of Subject performing an Activity and Activity itself
 - data was grouped by Activity and Subject. Mean value of each group was calculated. 
 - results can be found in result.txt file after running the script run_analysis.R in working directory