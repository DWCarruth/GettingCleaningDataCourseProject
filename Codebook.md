# A Reduced Version of the Human Activity Recognition Using Smartphones Dataset
```
================================================================
Original Dataset Available from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================
```


# CODEBOOK FOR REDUCED UCI HAR DATASET

## Script: run_analysis.R
1. Loads training data files from UCI HAR Dataset folder in the working directory
2. Loads activity labels from UCI HAR Dataset/activity_labels.txt
3. Combines loaded training data into a DFTrain data frame
4. Loads test data files from UCI HAR Dataset folder in the working directory
5. Combines loaded test data into a DFTest data frame
6. Merges the training and test datasets into a DFMerge data frame (Assignment Task #1)
7. Loads the data variable names from UCI HAR Dataset/features.txt
8. Assigns DFMerge column names based on features.txt (Assignment Task #4)
9. Reduces data set to variables having to do with mean and std (Assignment Task #2)
10. Aggregates data by subject and activity into dfproc data frame
11. Exports new reduced data set to file "UCI_HAR_reduced.txt" (Assignment Task #5)

## Variables 
### Name		Description		Values
ActivityID		Subject activities	WALKING
						WALKING_UPSTAIRS
						WALKING_DOWNSTAIRS
						SITTING
						STANDING
						LAYING

SubjectID		Subject identifier	1-30

tBodyAcc-mean()-X	Mean of Body Acceleration in X		

tBodyAcc-mean()-Y	Mean of Body Acceleration in Y

tBodyAcc-mean()-Z	Mean of Body Acceleration in Z

tBodyAcc-std()-X	Average Std Deviation of Body Acceleration in X		

tBodyAcc-std()-Y	Average Std Deviation of Body Acceleration in Y

tBodyAcc-std()-Z	Average Std Deviation of Body Acceleration in Z

tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z

tGravityAcc-std()-X       

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y      

tBodyAccJerk-mean()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z       

tBodyGyro-mean()-X

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyro-std()-X          

tBodyGyro-std()-Y

tBodyGyro-std()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y     

tBodyGyroJerk-mean()-Z

tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z      

tBodyAccMag-mean()

tBodyAccMag-std()

tGravityAccMag-mean()

tGravityAccMag-std()       

tBodyAccJerkMag-mean()

tBodyAccJerkMag-std()

tBodyGyroMag-mean()

tBodyGyroMag-std()         

tBodyGyroJerkMag-mean()

tBodyGyroJerkMag-std()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y          

fBodyAcc-mean()-Z

fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z          

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-std()-X       

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y         

fBodyGyro-mean()-Z

fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z          

fBodyAccMag-mean()

fBodyAccMag-std()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-std() 
 