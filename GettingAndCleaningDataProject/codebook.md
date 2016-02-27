# Codebook #
The following descibes the data in 'data.txt'. The descriptions are also valid for 'averages.txt', however in this case the values represented are averages over the subjectId and activity.

First I'll describe what the data contains, then give the variable names.
* 'subjectId' is a unique identifier of individual participants
* 'activity' is the name of the activity undertaken

The rest of the variables are a subset of the original UCI dataset (links in the README).

The section below describes those variables. This is taken directly from the 'features_info.txt' file contained in the original UCI dataset and accompanying files:

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

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

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

## Variables ##
* 1 subjectId 
* 2 activity 
* 3 tBodyAccMeanX 
* 4 tBodyAccMeanY 
* 5 tBodyAccMeanZ 
* 6 tBodyAccStdX 
* 7 tBodyAccStdY 
* 8 tBodyAccStdZ 
* 9 tGravityAccMeanX 
* 10 tGravityAccMeanY 
* 11 tGravityAccMeanZ 
* 12 tGravityAccStdX 
* 13 tGravityAccStdY 
* 14 tGravityAccStdZ 
* 15 tBodyAccJerkMeanX 
* 16 tBodyAccJerkMeanY 
* 17 tBodyAccJerkMeanZ 
* 18 tBodyAccJerkStdX 
* 19 tBodyAccJerkStdY 
* 20 tBodyAccJerkStdZ 
* 21 tBodyGyroMeanX 
* 22 tBodyGyroMeanY 
* 23 tBodyGyroMeanZ 
* 24 tBodyGyroStdX 
* 25 tBodyGyroStdY 
* 26 tBodyGyroStdZ 
* 27 tBodyGyroJerkMeanX 
* 28 tBodyGyroJerkMeanY 
* 29 tBodyGyroJerkMeanZ 
* 30 tBodyGyroJerkStdX 
* 31 tBodyGyroJerkStdY 
* 32 tBodyGyroJerkStdZ 
* 33 tBodyAccMagMean 
* 34 tBodyAccMagStd 
* 35 tGravityAccMagMean 
* 36 tGravityAccMagStd 
* 37 tBodyAccJerkMagMean 
* 38 tBodyAccJerkMagStd 
* 39 tBodyGyroMagMean 
* 40 tBodyGyroMagStd 
* 41 tBodyGyroJerkMagMean 
* 42 tBodyGyroJerkMagStd 
* 43 fBodyAccMeanX 
* 44 fBodyAccMeanY 
* 45 fBodyAccMeanZ 
* 46 fBodyAccStdX 
* 47 fBodyAccStdY 
* 48 fBodyAccStdZ 
* 49 fBodyAccJerkMeanX 
* 50 fBodyAccJerkMeanY 
* 51 fBodyAccJerkMeanZ 
* 52 fBodyAccJerkStdX 
* 53 fBodyAccJerkStdY 
* 54 fBodyAccJerkStdZ 
* 55 fBodyGyroMeanX 
* 56 fBodyGyroMeanY 
* 57 fBodyGyroMeanZ 
* 58 fBodyGyroStdX 
* 59 fBodyGyroStdY 
* 60 fBodyGyroStdZ 
* 61 fBodyAccMagMean 
* 62 fBodyAccMagStd 
* 63 fBodyBodyAccJerkMagMean 
* 64 fBodyBodyAccJerkMagStd 
* 65 fBodyBodyGyroMagMean 
* 66 fBodyBodyGyroMagStd 
* 67 fBodyBodyGyroJerkMagMean 
* 68 fBodyBodyGyroJerkMagStd
