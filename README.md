I have downloaded the data produced by Human Activity Recognition Using Smartphones Dataset Version 1.0
from following location:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

README.txt file provided with data had a following description of the experiments and collected data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers 
was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 





**I used following files from original dataset**:

* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.
The following files are available for the train and test data. Their descriptions are equivalent. 
* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



**For each record it is provided**:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.



**_License_**:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



**Steps performed to accomplish the Course Project and create tidy data set**:

```
Step 1: Merge the training and the test sets to create one data set.                                                  

I've accomplished that step by:
- reviewing all files to see what data is available in each of them:
features.txt - this file contained 2 columns: enumerator and name of 561 variables. those were added to 
training set (X_train.txt) and test set (X_test.txt) as headers
y_test.txt contained one column with the labels of activities  - I joined this as an additional column to test set
y_train.txt contained one column with the labels of activities - I joined this as an additional column to train set
train/subject_train.txt - contains one column with the details of all of the subjects - I joined this as an additional 
column to both train and test sets
    
Step 2:  Extracts only the measurements on the mean and standard deviation for each measurement. 

After reviewing in detail and participating in the discussion forums I decided that all columns that 
have mean() and std() suffixes comply with the condition in the course project.
So for my new data set i only selected those columns.
    
Step 3: Uses descriptive activity names to name the activities in the data set

This step was accomplished my merging the content of train and test data sets using the name of variables 

Step 4:    Appropriately labels the data set with descriptive variable names. 

I did not feel that there was a need to rename all the variables, because I felt that their names were descriptive 
enough for people in the field.
However in order to complete this step I renamed all variables to provide the best possible descriptive names 
to best of my understanding of the measures.
I also provided the description of each of the 68 variables in the CODEBOOK.


Last step 5:
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I accomplished this step by applying mean() to my combined_descr_activity data set grouping it by subject and activity.


My resulting tidy data set has 180 x 68 variables (30 subjects * 6 activities= 180 rows X 66 measurement variables + 2 categorical variables). 
It is available for review at GitHub:
https://github.com/yuleeya/repo_assignment                                                                                                 


```
