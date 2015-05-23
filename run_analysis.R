library(dplyr)

## download and unzip
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "getdata-projectfiles-UCI HAR Dataset.zip")
unzip("getdata-projectfiles-UCI HAR Dataset.zip")

## ASSIGNMENT 1 (Merges the training and the test sets to create one data set)
## testing data set
test <- read.table("UCI HAR Dataset/test/X_test.txt")
test$subject <- read.table("UCI HAR Dataset/test/subject_test.txt")$V1
test$activity <- read.table("UCI HAR Dataset/test/y_test.txt")$V1

## training data set
train <- read.table("UCI HAR Dataset/train/X_train.txt")
train$subject <- read.table("UCI HAR Dataset/train/subject_train.txt")$V1
train$activity <- read.table("UCI HAR Dataset/train/y_train.txt")$V1

## merge testing and training data set
tidy_data <- rbind(test, train)

## ASSIGNMENT 3 (Uses descriptive activity names to name the activities in the data set)
activity <- read.table("UCI HAR Dataset/activity_labels.txt")
tidy_data$activity <- factor(tidy_data$activity, levels = 1:6,
                             labels = activity$V2)

## ASSIGNMENT 4 (Appropriately labels the data set with descriptive variable names) 
feature <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
names(tidy_data)[1:561] <- feature[,2]

## columns order 
tidy_data <- tidy_data[,c(562,563,1:561)]

## ASSIGNMENT 2 (Extracts only the measurements on the mean and standard deviation for each measurement)  
tidy_data <- select(tidy_data, subject, activity, contains("mean()"), contains("std()"))

## ASSIGNEMENT 5 (creates a second, independent tidy data set with the average
## of each variable for each activity and each subject)
tidy_data_average <- tidy_data %>% group_by(activity, subject) %>% summarise_each(funs(mean))

## export txt for submission
write.table(tidy_data_average, file = "tidy_data_average.txt", row.name=FALSE)
