# Getting and Cleaning Data Course Project CodeBook

This file describes the variables, the data and any transformations or work performed to clean up.

## Source Data Set 
A full description of the source data set, "Human Activity Recognition Using Smartphones Data Set", is available at the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Clean up and transformation
The "run_analysis.R" R code merges the testing and training data sets. Each observation is associated with its correspondent  activity ("activity_labels.txt") and each variable label is appropriately modified with descriptive variable names ("features.txt"). 
The data set is reduced to contain only the measurements on the mean and standard deviation.
Then the script creates a second and independent tidy data set with the average of each measurement on the mean and standard deviation for each activity and each subject.

## Tiny Data Variables
The obtained Tiny Data Set contains 180 observations and 68 variables.

The columns 1 and 2 are factor variables

Activity = the activity descriptive name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING). 

Subject = identifies the subject who performed the activity. Its range is from 1 to 30.

The columns from 3 to 68 are the average of the following signals:

- tBodyAcc-XYZ 
- tGravityAcc-XYZ 
- tBodyAccJerk-XYZ 
- tBodyGyro-XYZ 
- tBodyGyroJerk-XYZ 
- tBodyAccMag 
- tGravityAccMag 
- tBodyAccJerkMag 
- tBodyGyroMag 
- tBodyGyroJerkMag 
- fBodyAcc-XYZ 
- fBodyAccJerk-XYZ 
- fBodyGyro-XYZ 
- fBodyAccMag 
- fBodyAccJerkMag 
- fBodyGyroMag 
- fBodyGyroJerkMag

The set of variables that were estimated (and kept for this assignment) from these signals are:

- mean(): Mean value
- std(): Standard deviation

