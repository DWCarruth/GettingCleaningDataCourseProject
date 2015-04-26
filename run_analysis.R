
#fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#srcZip = download.file(fileURL,"source.zip")

# Filenames
trainSubjectFilename <- 'UCI HAR Dataset//train//subject_train.txt'
trainDataFilename <- 'UCI HAR Dataset//train//X_train.txt'
trainActivityFilename <- 'UCI HAR Dataset//train//y_train.txt'
testSubjectFilename <- 'UCI HAR Dataset//test//subject_test.txt'
testDataFilename <- 'UCI HAR Dataset//test//X_test.txt'
testActivityFilename <- 'UCI HAR Dataset//test//y_test.txt'
featuresFilename <- 'UCI HAR Dataset//features.txt'
activityLabelsFilename <- 'UCI HAR Dataset//activity_labels.txt'

# Load the training set
#  Load the subject data: UCI HAR Dataset/train/subject_train.txt
DF <- read.table(trainSubjectFilename)
#  Load the training data: UCI HAR Dataset/train/X_train.txt
DF2 <- read.table(trainDataFilename)
#  Load the activity labels: UCI HAR Dataset/train/y_train.txt
DF3 <- read.table(trainActivityFilename)
# Build the training data table
DFTrain <- cbind(DF, DF2, DF3)

# Load the test set
#  Load the subject data: UCI HAR Dataset/test/subject_test.txt
DF <- read.table(testSubjectFilename)
#  Load the training data: UCI HAR Dataset/test/X_test.txt
DF2 <- read.table(testDataFilename)
#  Load the activity labels: UCI HAR Dataset/test/y_test.txt
DF3 <- read.table(testActivityFilename)
# Build the test data table
DFTest <- cbind(DF, DF2, DF3)

# Assignment Task #1: Append the training and test sets into a merged dataset
DFMerge <- rbind(DFTrain, DFTest)
# set column names: SubjectID, Features, ActivityID
colnames(DFMerge)[1] <- "SubjectID"
# Assignment Task #4: assign dataset author's names from features.txt to the variables
features <- read.table(featuresFilename, stringsAsFactors=F)
colnames(DFMerge)[2:562] <- features[[2]]
colnames(DFMerge)[563] <- "ActivityID"

# Assignment Task#3: load Activity names from activity_labels.txt
actLabels <- read.table(activityLabelsFilename, stringsAsFactors=F)
# add column with labels using factor
DFMerge$ActivityLabels <- factor(DFMerge$ActivityID, labels=actLabels[[2]])

head(DFMerge)

# Assignment Task#2: Keep only mean and SD variables
keeps <- c("SubjectID","ActivityID","ActivityLabels", 
           "tBodyAcc-mean()-X", "tBodyAcc-mean()-Y", "tBodyAcc-mean()-Z",
           "tBodyAcc-std()-X", "tBodyAcc-std()-Y", "tBodyAcc-std()-Z",
           "tGravityAcc-mean()-X", "tGravityAcc-mean()-Y", "tGravityAcc-mean()-Z",
           "tGravityAcc-std()-X", "tGravityAcc-std()-Y", "tGravityAcc-std()-Z",
           "tBodyAccJerk-mean()-X", "tBodyAccJerk-mean()-Y", "tBodyAccJerk-mean()-Z",
           "tBodyAccJerk-std()-X", "tBodyAccJerk-std()-Y", "tBodyAccJerk-std()-Z",
           "tBodyGyro-mean()-X", "tBodyGyro-mean()-Y", "tBodyGyro-mean()-Z",
           "tBodyGyro-std()-X", "tBodyGyro-std()-Y", "tBodyGyro-std()-Z",
           "tBodyGyroJerk-mean()-X", "tBodyGyroJerk-mean()-Y", "tBodyGyroJerk-mean()-Z",
           "tBodyGyroJerk-std()-X", "tBodyGyroJerk-std()-Y", "tBodyGyroJerk-std()-Z",
           "tBodyAccMag-mean()", "tBodyAccMag-std()",
           "tGravityAccMag-mean()", "tGravityAccMag-std()",
           "tBodyAccJerkMag-mean()", "tBodyAccJerkMag-std()",
           "tBodyGyroMag-mean()", "tBodyGyroMag-std()",
           "tBodyGyroJerkMag-mean()", "tBodyGyroJerkMag-std()",
           "fBodyAcc-mean()-X", "fBodyAcc-mean()-Y", "fBodyAcc-mean()-Z",
           "fBodyAcc-std()-X", "fBodyAcc-std()-Y", "fBodyAcc-std()-Z",
           "fBodyAccJerk-mean()-X", "fBodyAccJerk-mean()-Y", "fBodyAccJerk-mean()-Z",
           "fBodyAccJerk-std()-X", "fBodyAccJerk-std()-Y", "fBodyAccJerk-std()-Z",
           "fBodyGyro-mean()-X", "fBodyGyro-mean()-Y", "fBodyGyro-mean()-Z",
           "fBodyGyro-std()-X", "fBodyGyro-std()-Y", "fBodyGyro-std()-Z",
           "fBodyAccMag-mean()", "fBodyAccMag-std()",
           "fBodyBodyAccJerkMag-mean()", "fBodyBodyAccJerkMag-std()",
           "fBodyBodyGyroMag-mean()", "fBodyBodyGyroMag-std()",
           "fBodyBodyGyroJerkMag-mean()", "fBodyBodyGyroJerkMag-std()")
DFReduce <- DFMerge[keeps]

#Assignment Task#5: New table
head(DFReduce)

# Calculate average of each variable for each activity and each subject
dfproc <- aggregate(DFReduce[,4:69], by=list(ActivityID = DFReduce$ActivityLabels, SubjectID = DFReduce$SubjectID), FUN="mean")


