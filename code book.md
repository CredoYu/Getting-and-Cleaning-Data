 #Code Book
 
 Data Set
 
Consists of 68 columns and 180 rows, the first two pertain to the test subject and the activity performed, the rest are the measurements gathered from the phone. The details of the original data set can be found (here)[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] the

Added Variables

A data.table named MeanData.txt is set with the following first two columns.
Column : subject, activity

Variables:
"timeBodyAccMean-X" "timeBodyAccMean-Y" "timeBodyAccMean-Z" "timeBodyAccStd-X" "timeBodyAccStd-Y" "timeBodyAccStd-Z" "timeGravityAccMean-X" "timeGravityAccMean-Y" "timeGravityAccMean-Z" "timeGravityAccStd-X" "timeGravityAccStd-Y" "timeGravityAccStd-Z" "timeBodyAccJerkMean-X" "timeBodyAccJerkMean-Y" "timeBodyAccJerkMean-Z" "timeBodyAccJerkStd-X" "timeBodyAccJerkStd-Y" "timeBodyAccJerkStd-Z" "timeBodyGyroMean-X" "timeBodyGyroMean-Y" "timeBodyGyroMean-Z" "timeBodyGyroStd-X" "timeBodyGyroStd-Y" "timeBodyGyroStd-Z" "timeBodyGyroJerkMean-X" "timeBodyGyroJerkMean-Y" "timeBodyGyroJerkMean-Z" "timeBodyGyroJerkStd-X" "timeBodyGyroJerkStd-Y" "timeBodyGyroJerkStd-Z" "timeBodyAccMagMean" "timeBodyAccMagStd" "timeGravityAccMagMean" "timeGravityAccMagStd" "timeBodyAccJerkMagMean" "timeBodyAccJerkMagStd" "timeBodyGyroMagMean" "timeBodyGyroMagStd" "timeBodyGyroJerkMagMean" "timeBodyGyroJerkMagStd" "frequenceBodyAccMean-X" "frequenceBodyAccMean-Y" "frequenceBodyAccMean-Z" "frequenceBodyAccStd-X" "frequenceBodyAccStd-Y" "frequenceBodyAccStd-Z" "frequenceBodyAccJerkMean-X" "frequenceBodyAccJerkMean-Y" "frequenceBodyAccJerkMean-Z" "frequenceBodyAccJerkStd-X" "frequenceBodyAccJerkStd-Y" "frequenceBodyAccJerkStd-Z" "frequenceBodyGyroMean-X" "frequenceBodyGyroMean-Y" "frequenceBodyGyroMean-Z" "frequenceBodyGyroStd-X" "frequenceBodyGyroStd-Y" "frequenceBodyGyroStd-Z" "frequenceBodyAccMagMean" "frequenceBodyAccMagStd" "frequenceBodyBodyAccJerkMagMean" "frequenceBodyBodyAccJerkMagStd" "frequenceBodyBodyGyroMagMean" "frequenceBodyBodyGyroMagStd" "frequenceBodyBodyGyroJerkMagMean" "frequenceBodyBodyGyroJerkMagStd"

A prefix of "time" denotes time domain data and "frequency" denotes frequency domain A suffix of "...X" denotes X axis data and so on

Download Raw Data
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. See readme for citation.
