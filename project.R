setwd("D:/R/G&C_Data")
# 1. Merge the training and the test sets to create one data set.
## step 1: download zip file from website
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/projectDat_getCleanData.zip")

## step 2: unzip data
listZip <- unzip("./data/projectDat_getCleanData.zip")

## step 3: load data into R
train.x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test.x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## step 4: merge train and test data
traindata <- cbind(train.x, train.y, train.subject)
testdata <- cbind(test.x, test.y, test.subject)
fulldata <- rbind(traindata, testdata)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 

## step 1: load feature name into R
featureName <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2]

## step 2:  extract mean and standard deviation of each measurements
featureIndex <- grep(("mean\\(\\)|std\\(\\)"),featureName)
finaldata <- fulldata[,c(1,2,featureIndex + 2)]
colnames(finaldata) <- c("subject","activity", featureName[featureIndex])

# 3. Uses descriptive activity names to name the activities in the data set

## step 1: load activity data into R
activityName <- read.table("./UCI HAR Dataset/activity_labels.txt")

## step 2: replace 1 to 6 with activity names
finaldata$activity <- factor(finaldata$activity, levels = activityName[,1], labels = activityName[,2])

# 4. Appropriately labels the data set with descriptive variable names.
names(finaldata) <- gsub("\\()", "", names(finaldata))
names(finaldata) <- gsub("^t", "time", names(finaldata))
names(finaldata) <- gsub("^f", "frequence", names(finaldata))
names(finaldata) <- gsub("-mean", "Mean", names(finaldata))
names(finaldata) <- gsub("-std", "Std", names(finaldata))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
library(dplyr)
groupData <- finaldata %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean))

write.table(groupData, "./data/MeanData.txt", row.names = FALSE)
