# GettingCleaningDataCourseProject

## run_analysis.R
- processes the UCI HAR Dataset
- includes commented out lines to download the dataset

## Script: run_analysis.R ##
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

## codebook ##
- describes variables in the reduced dataset
- describes location of original dataset
- describes processes applied to the dataset
