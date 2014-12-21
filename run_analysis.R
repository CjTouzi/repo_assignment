library(dplyr)
library(data.table)

#downloading  Samsung data from provided URL and un-zipping into local working directory
fileUrl <-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
download.file (fileUrl, destfile = "data.zip")
unzip("data.zip")

#reading data from the files
test <- read.table ("./UCI HAR Dataset/test/X_test.txt")
train <- read.table ("./UCI HAR Dataset/train/X_train.txt")
y_test <- read.table ("./UCI HAR Dataset/test/y_test.txt")
y_train <- read.table ("./UCI HAR Dataset/train/y_train.txt")
subject_test <- read.table ("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table ("./UCI HAR Dataset/train/subject_train.txt")
activity_labels <- read.table ("./UCI HAR Dataset/activity_labels.txt")

header <- read.table ("D:/coursera/data/features.txt")

#renaming columns in files
colnames(test) <- header[[2]]
colnames(train) <- header[[2]]
colnames(y_test) <- ("activity")
colnames(y_train) <- ("activity")
colnames(y_test) <- ("subject")
colnames(y_train) <- ("subject")
colnames(activity_labels) <- c ("activity", "activity_name")

#switching from data.frames to data.tables
test <- data.table(test)
train <- data.table(train)
activity_labels <- data.table(activity_labels)

#attaching columns to test and train data from subject and activity files
test1<- test [ ,activity:=y_test[1] ]
test_complete <- test1 [ ,subject:=subject_test[1] ]

train1 <- train [ ,activity:=y_train[1] ]
train_complete <- train1 [ ,subject:=subject_train[1] ]

#merging test and train data into one combined dataset
combined_set <- rbind (test_complete, train_complete)

#leaving only mean and standard deviation
combined_mean_std_set <-select(combined_set,contains('mean()'),contains('std()'), contains ('subject'), contains ('activity'))

#assigning descriptive activity names  
combined_descr_activity <- merge (combined_mean_std_set, activity_labels, by="activity")
combined_descr_activity <- subset (combined_descr_activity, select= - activity)

#creating independent tidy data set with the average of each variable for each activity and each subject
tidy_data <- combined_descr_activity[, lapply(.SD,mean), by= c('subject', 'activity_name')]
tidy_data <- tidy_data [order (subject, activity_name)]

#renaming  all columns to provide a descriptive variable names
setnames(tidy_data, c('subject',
                      'activity_name',
                      'tBodyAcc-mean()-X',    
                      'tBodyAcc-mean()-Y',		
                      'tBodyAcc-mean()-Z',		
                      'tBodyAcc-std()-X',		
                      'tBodyAcc-std()-Y',		
                      'tBodyAcc-std()-Z',		
                      'tGravityAcc-mean()-X',        
                      'tGravityAcc-mean()-Y',		
                      'tGravityAcc-mean()-Z',		
                      'tGravityAcc-std()-X',		
                      'tGravityAcc-std()-Y',		
                      'tGravityAcc-std()-Z',		
                      'tBodyAccJerk-mean()-X',		
                      'tBodyAccJerk-mean()-Y',		
                      'tBodyAccJerk-mean()-Z',		
                      'tBodyAccJerk-std()-X',		
                      'tBodyAccJerk-std()-Y',		
                      'tBodyAccJerk-std()-Z',		
                      'tBodyGyro-mean()-X',		
                      'tBodyGyro-mean()-Y',		
                      'tBodyGyro-mean()-Z',		
                      'tBodyGyro-std()-X',		
                      'tBodyGyro-std()-Y',		
                      'tBodyGyro-std()-Z',		
                      'tBodyGyroJerk-mean()-X',		
                      'tBodyGyroJerk-mean()-Y',		
                      'tBodyGyroJerk-mean()-Z',		
                      'tBodyGyroJerk-std()-X',		
                      'tBodyGyroJerk-std()-Y',		
                      'tBodyGyroJerk-std()-Z',		
                      'tBodyAccMag-mean()',		
                      'tBodyAccMag-std()',		
                      'tGravityAccMag-mean()',		
                      'tGravityAccMag-std()',		
                      'tBodyAccJerkMag-mean()',		
                      'tBodyAccJerkMag-std()',		
                      'tBodyGyroMag-mean()',		
                      'tBodyGyroMag-std()',		
                      'tBodyGyroJerkMag-mean()',	
                      'tBodyGyroJerkMag-std()',		
                      'fBodyAcc-mean()-X',		
                      'fBodyAcc-mean()-Y',		
                      'fBodyAcc-mean()-Z',		
                      'fBodyAcc-std()-X',		
                      'fBodyAcc-std()-Y',		
                      'fBodyAcc-std()-Z',		
                      'fBodyAccJerk-mean()-X',		
                      'fBodyAccJerk-mean()-Y',		
                      'fBodyAccJerk-mean()-Z',		
                      'fBodyAccJerk-std()-X',		
                      'fBodyAccJerk-std()-Y',		
                      'fBodyAccJerk-std()-Z',		
                      'fBodyGyro-mean()-X',		
                      'fBodyGyro-mean()-Y',		
                      'fBodyGyro-mean()-Z',		
                      'fBodyGyro-std()-X',		
                      'fBodyGyro-std()-Y',		
                      'fBodyGyro-std()-Z',		
                      'fBodyAccMag-mean()',		
                      'fBodyAccMag-std()',		
                      'fBodyBodyAccJerkMag-mean()',
                      'fBodyBodyAccJerkMag-std()',	
                      'fBodyBodyGyroMag-mean()',	
                      'fBodyBodyGyroMag-std()',		
                      'fBodyBodyGyroJerkMag-mean()',
                      'fBodyBodyGyroJerkMag-std()'
), c('subject',
     'activity',
     'time_Body_Accelerometer_signal_X_Mean_value',
     'time_Body_Accelerometer_signal_Y_Mean_value',
     'time_Body_Accelerometer_signal_Z_Mean_value',  	
     'time_Body_Accelerometer_signal_X_Standard_deviation',		
     'time_Body_Accelerometer_signal_Y_Standard_deviation',
     'time_Body_Accelerometer_signal_Z_Standard_deviation',
     'time_Gravity_Accelerometer_signal_X_Mean_value',
     'time_Gravity_Accelerometer_signal_Y_Mean_value',
     'time_Gravity_Accelerometer_signal_Z_Mean_value',
     'time_Gravity_Accelerometer_signal_X_Standard_deviation',
     'time_Gravity_Accelerometer_signal_Y_Standard_deviation',
     'time_Gravity_Accelerometer_signal_Z_Standard_deviation',
     'time_Body_Accelerometer_Jerk_signal_X_Mean_value',
     'time_Body_Accelerometer_Jerk_signal_Y_Mean_value',
     'time_Body_Accelerometer_Jerk_signal_Z_Mean_value',
     'time_Body_Accelerometer_Jerk_signal_X_Standard_deviation',
     'time_Body_Accelerometer_Jerk_signal_Y_Standard_deviation',
     'time_Body_Accelerometer_Jerk_signal_Z_Standard_deviation',
     'time_Body_Gyroscope_signal_X_Mean_value',
     'time_Body_Gyroscope_signal_Y_Mean_value',
     'time_Body_Gyroscope_signal_Z_Mean_value',
     'time_Body_Gyroscope_signal_X_Standard_deviation',
     'time_Body_Gyroscope_signal_Y_Standard_deviation',
     'time_Body_Gyroscope_signal_Z_Standard_deviation',
     'time_Body_Gyroscope_Jerk_signal_X_Mean_value',
     'time_Body_Gyroscope_Jerk_signal_Y_Mean_value',
     'time_Body_Gyroscope_Jerk_signal_Z_Mean_value',
     'time_Body_Gyroscope_Jerk_signal_X_Standard_deviation',
     'time_Body_Gyroscope_Jerk_signal_Y_Standard_deviation',
     'time_Body_Gyroscope_Jerk_signal_Z_Standard_deviation',
     'time_Body_Accelerometer_signal_Magnitude_Mean_value',
     'time_Body_Accelerometer_signal_Magnitude_Standard_deviation',
     'time_Gravity_Accelerometer_signal_Magnitude_Mean_value',
     'time_Gravity_Accelerometer_signal_Magnitude_Standard_deviation',
     'time_Gravity_Accelerometer_Jerk_signal_Magnitude_Mean_value',
     'time_Gravity_Accelerometer_Jerk_signal_Magnitude_Standard_deviation',
     'time_Body_Gyroscope_signal_Magnitude_Mean_value',
     'time_Body_Gyroscope_signal_Magnitude_Standard_deviation',
     'time_Body_Gyroscope_Jerk_signal_Magnitude_Mean_value',
     'time_Body_Gyroscope_Jerk_signal_Magnitude_Standard_deviation',
     'frequency_Body_Accelerometer_signal_X_Mean_value',
     'frequency_Body_Accelerometer_signal_Y_Mean_value',
     'frequency_Body_Accelerometer_signal_Z_Mean_value',
     'frequency_Body_Accelerometer_signal_X_Standard_deviation',
     'frequency_Body_Accelerometer_signal_Y_Standard_deviation',
     'frequency_Body_Accelerometer_signal_Z_Standard_deviation',
     'frequency_Body_Accelerometer_Jerk_signal_X_Mean_value',
     'frequency_Body_Accelerometer_Jerk_signal_Y_Mean_value',
     'frequency_Body_Accelerometer_Jerk_signal_Z_Mean_value',
     'frequency_Body_Accelerometer_Jerk_signal_X_Standard_deviation',
     'frequency_Body_Accelerometer_Jerk_signal_Y_Standard_deviation',
     'frequency_Body_Accelerometer_Jerk_signal_Z_Standard_deviation',
     'frequency_Body_Gyroscope_signal_X_Mean_value',
     'frequency_Body_Gyroscope_signal_Y_Mean_value',
     'frequency_Body_Gyroscope_signal_Z_Mean_value',
     'frequency_Body_Gyroscope_signal_X_Standard_deviation',
     'frequency_Body_Gyroscope_signal_Y_Standard_deviation',
     'frequency_Body_Gyroscope_signal_Z_Standard_deviation',
     'frequency_Body_Accelerometer_signal_Magnitude_Mean_value',
     'frequency_Body_Accelerometer_signal_Standard_deviation',
     'frequency_Body_Accelerometer_Jerk_signal_Magnitude_Mean_value',
     'frequency_Body_Accelerometer_Jerk_signal_Magnitude_Standard_deviation',
     'frequency_Body_Gyroscope_signal_Magnitude_Mean_value',
     'frequency_Body_Gyroscope_signal_Magnitude_Standard_deviation',
     'frequency_Body_Gyroscope_Jerk_signal_Magnitude_Mean_value',
     'frequency_Body_Gyroscope_Jerk_signal_Magnitude_Standard_deviation'))

write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)
