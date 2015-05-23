
# Getting and Cleaning Data Course Project

This repository cotains my submission for the Coursera course "Getting and Cleaning data" project, it consists of the following files:

* run_analysis.R
* README.md
* CodeBook.md
* tidy_data_average.txt


## run_analysis.R

The "run_analysis.R" file contains the R code for download and unzip the "Human Activity Recognition Using Smartphones Data Set" and perform the assignment of the course project:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script also writes the realized tidy data set into the file "tidy_data_average.txt"


## CodeBook.md
The CodeBook.md file describes the variables, the data and any transformations or work performed to clean up.


## tidy_data_average.txt
The "tidy_data_average.txt" file contains the tidy data set realized with the R code.
