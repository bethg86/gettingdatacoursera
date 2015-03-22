## Code Book

### Experimental design and background (from README.txt in data set):
Human Activity Recognition Using Smartphones Dataset, Version 1.0
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

Additional information about the experiment design can be found in the README.txt file.

### Raw data: 
Raw data is contained at the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The raw data used to create the tidy data set is contained in the following files:
* y_test.txt: activity code data for test group
* y_train.txt: activity code data for training group
* subject_test.txt: subject numbers for subjects in test group
* subject_train.txt: subject numbers for subjects in training group
* X_test.txt: accelerometer and gyroscope data for test group
* X_train.txt: accelerometer and gyroscope data for training group

The description of the accelerometer and gyroscope data is contained in features_info.txt.  The labels for this data is contained in features.txt

The mapping of the activity codes to activity names is contained in activity_labels.txt  

### Transformations:
The raw data is transformed in the following way:
* Column bind the 3 test group files into a single data table
* Column bind the 3 training group files into a single data table
* Row bind the test and training data tables together into a single data table
* Create a vector of column names containing 'subject', 'activity', and the variable names contained in features.txt
* Clean up the variable names derived from features.txt
* Attach column names to data table
* Select only the mean and standard deviation (std) columns as indicated by assignment
* Group data by subject and activity and calculate the mean for each variable
* Write table to text file

### Processed data:
The final processed data set (final_tidy.txt) consists of 180 rows (30 subjects x 6 activities).  For each subject/activity pair, the data set contains the average value of the following 79 variables:
* "timeBodyAcceleration.mean.X"              
* "timeBodyAcceleration.mean.Y"              
* "timeBodyAcceleration.mean.Z"              
* "timeGravityAcceleration.mean.X"           
* "timeGravityAcceleration.mean.Y"           
* "timeGravityAcceleration.mean.Z"           
* "timeBodyAccelerationJerk.mean.X"          
* "timeBodyAccelerationJerk.mean.Y"          
* "timeBodyAccelerationJerk.mean.Z"          
* "timeBodyGyro.mean.X"                      
* "timeBodyGyro.mean.Y"                      
* "timeBodyGyro.mean.Z"                      
* "timeBodyGyroJerk.mean.X"                  
* "timeBodyGyroJerk.mean.Y"                  
* "timeBodyGyroJerk.mean.Z"                  
* "timeBodyAccelerationMag.mean"             
* "timeGravityAccelerationMag.mean"          
* "timeBodyAccelerationJerkMag.mean"         
* "timeBodyGyroMag.mean"                     
* "timeBodyGyroJerkMag.mean"                 
* "frequencyBodyAcceleration.mean.X"         
* "frequencyBodyAcceleration.mean.Y"         
* "frequencyBodyAcceleration.mean.Z"         
* "frequencyBodyAcceleration.meanFreq.X"     
* "frequencyBodyAcceleration.meanFreq.Y"     
* "frequencyBodyAcceleration.meanFreq.Z"     
* "frequencyBodyAccelerationJerk.mean.X"     
* "frequencyBodyAccelerationJerk.mean.Y"     
* "frequencyBodyAccelerationJerk.mean.Z"     
* "frequencyBodyAccelerationJerk.meanFreq.X" 
* "frequencyBodyAccelerationJerk.meanFreq.Y" 
* "frequencyBodyAccelerationJerk.meanFreq.Z" 
* "frequencyBodyGyro.mean.X"                 
* "frequencyBodyGyro.mean.Y"                 
* "frequencyBodyGyro.mean.Z"                 
* "frequencyBodyGyro.meanFreq.X"             
* "frequencyBodyGyro.meanFreq.Y"             
* "frequencyBodyGyro.meanFreq.Z"             
* "frequencyBodyAccelerationMag.mean"        
* "frequencyBodyAccelerationMag.meanFreq"    
* "frequencyBodyAccelerationJerkMag.mean"    
* "frequencyBodyAccelerationJerkMag.meanFreq"
* "frequencyBodyGyroMag.mean"                
* "frequencyBodyGyroMag.meanFreq"            
* "frequencyBodyGyroJerkMag.mean"            
* "frequencyBodyGyroJerkMag.meanFreq"        
* "timeBodyAcceleration.std.X"               
* "timeBodyAcceleration.std.Y"               
* "timeBodyAcceleration.std.Z"               
* "timeGravityAcceleration.std.X"            
* "timeGravityAcceleration.std.Y"            
* "timeGravityAcceleration.std.Z"            
* "timeBodyAccelerationJerk.std.X"           
* "timeBodyAccelerationJerk.std.Y"           
* "timeBodyAccelerationJerk.std.Z"           
* "timeBodyGyro.std.X"                       
* "timeBodyGyro.std.Y"                       
* "timeBodyGyro.std.Z"                       
* "timeBodyGyroJerk.std.X"                   
* "timeBodyGyroJerk.std.Y"                   
* "timeBodyGyroJerk.std.Z"                   
* "timeBodyAccelerationMag.std"              
* "timeGravityAccelerationMag.std"           
* "timeBodyAccelerationJerkMag.std"          
* "timeBodyGyroMag.std"                      
* "timeBodyGyroJerkMag.std"                  
* "frequencyBodyAcceleration.std.X"          
* "frequencyBodyAcceleration.std.Y"          
* "frequencyBodyAcceleration.std.Z"          
* "frequencyBodyAccelerationJerk.std.X"      
* "frequencyBodyAccelerationJerk.std.Y"      
* "frequencyBodyAccelerationJerk.std.Z"      
* "frequencyBodyGyro.std.X"                  
* "frequencyBodyGyro.std.Y"                  
* "frequencyBodyGyro.std.Z"                  
* "frequencyBodyAccelerationMag.std"         
* "frequencyBodyAccelerationJerkMag.std"     
* "frequencyBodyGyroMag.std"                 
* "frequencyBodyGyroJerkMag.std"