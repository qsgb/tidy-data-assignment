# Code book

##The variables
=================
###"subjetct"

  Integers form 1 to 30, indicate the 30 volunteers of this experiment

###"activity"

  Charactor strings, indicate the six action for recording: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

###The measured variables


The variables come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The mean and stand divation of these variables of each record were selected: 

* mean(): Mean value
* std(): Standard deviation

The full list of these variables:

tBodyAcc-mean()-X,
tBodyAcc-mean()-Y,
tBodyAcc-mean()-Z,
tBodyAcc-std()-X,
tBodyAcc-std()-Y,
tBodyAcc-std()-Z,
tGravityAcc-mean()-X,
tGravityAcc-mean()-Y,
tGravityAcc-mean()-Z,
tGravityAcc-std()-X,
tGravityAcc-std()-Y,
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X,
tBodyAccJerk-mean()-Y,
tBodyAccJerk-mean()-Z,
tBodyAccJerk-std()-X,
tBodyAccJerk-std()-Y,
tBodyAccJerk-std()-Z,
tBodyGyro-mean()-X,
tBodyGyro-mean()-Y,
tBodyGyro-mean()-Z,
tBodyGyro-std()-X,
tBodyGyro-std()-Y,
tBodyGyro-std()-Z,
tBodyGyroJerk-mean()-X,
tBodyGyroJerk-mean()-Y,
tBodyGyroJerk-mean()-Z,
tBodyGyroJerk-std()-X,
tBodyGyroJerk-std()-Y,
tBodyGyroJerk-std()-Z,
tBodyAccMag-mean(),
tBodyAccMag-std(),
tGravityAccMag-mean(),
tGravityAccMag-std(),
tBodyAccJerkMag-mean(),
tBodyAccJerkMag-std(),
tBodyGyroMag-mean(),
tBodyGyroMag-std(),
tBodyGyroJerkMag-mean(),
tBodyGyroJerkMag-std(),
fBodyAcc-mean()-X,
fBodyAcc-mean()-Y,
fBodyAcc-mean()-Z,
fBodyAcc-std()-X,
fBodyAcc-std()-Y,
fBodyAcc-std()-Z,
fBodyAccJerk-mean()-X,
fBodyAccJerk-mean()-Y,
fBodyAccJerk-mean()-Z,
fBodyAccJerk-std()-X,
fBodyAccJerk-std()-Y,
fBodyAccJerk-std()-Z,
fBodyGyro-mean()-X,
fBodyGyro-mean()-Y,
fBodyGyro-mean()-Z,
fBodyGyro-std()-X,
fBodyGyro-std()-Y,
fBodyGyro-std()-Z,
fBodyAccMag-mean(),
fBodyAccMag-std(),
fBodyBodyAccJerkMag-mean(),
fBodyBodyAccJerkMag-std(),
fBodyBodyGyroMag-mean(),
fBodyBodyGyroMag-std(),
fBodyBodyGyroJerkMag-mean(),
fBodyBodyGyroJerkMag-std()

**All the variables are normalised to (-1,1), the final table shows the mean values of each variable for each subject (volunteer) and each activity**

##The procedure
=================
* 1) read all the data of training set and testing set, then the subject and labels are combined with all the measured variables (cbind), merge the training set and testing set(rbind)
* 2) Read the features list, find all the features containing "mean()" and "std()" by function grep(). Subset the dataset using the retured indexes and the latest two columns (subject and activity labels).
* 3) find all the names containing "mean()" and "std()" and name the variables by them. The last 2 colum are named "subject" and "activity"
* 4) read the activity labels and name the colume of "activity" with these labels
* 5) use the group_by() and summaris_each() functions in the dplyr pacheages to caculate the mean value of each variable for each subject and activity. Then the final data frame are written to a text file. 
