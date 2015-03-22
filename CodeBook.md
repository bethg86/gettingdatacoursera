## Code Book

Experimental design and background (from README.txt in data set):
===================================================================
Human Activity Recognition Using Smartphones Dataset, Version 1.0
===================================================================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Additional information about the experiment design can be found in the README.txt file.

Raw data: 
Raw data is contained at the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The raw data used to create the tidy data set is contained in the following files:
* y_test.txt: activity code data for test group
* y_train.txt: activity code data for training group
* subject_test.txt: subject numbers for subjects in test group
* subject_train.txt: subject numbers for subjects in training group
* X_test.txt: accelerometer and gyroscope data for test group
* X_train.txt: accelerometer and gyroscope data for training group

The description of the accelerometer and gyroscope data is contained in features_info.txt.  

The mapping of the activity codes to activity names is contained in activity_labels.txt  

Transformations:
The raw data is transformed in the following way:


Processed data:
The final processed data contains