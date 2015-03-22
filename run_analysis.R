## Load libraries
library(data.table)
library(dplyr)

## Load X_test.txt, y_test.txt (activity data), 
## and subject_test.txt data and combine into 
## a single data frame
test_data <- cbind(read.table("./UCI HAR Dataset//test//subject_test.txt"),
                   read.table("./UCI HAR Dataset//test//y_test.txt"),
                   read.table("./UCI HAR Dataset//test//X_test.txt"))

## Load X_train.txt, y_train.txt (activity data), 
## and subject_train.txt data and combine into 
## a single data frame
train_data <- cbind(read.table("./UCI HAR Dataset//train//subject_train.txt"),
                    read.table("./UCI HAR Dataset//train//y_train.txt"),
                    read.table("./UCI HAR Dataset//train//X_train.txt"))

## Row bind test_data and train_data tables together
combined_data <- rbind(test_data, train_data)


## Read in data labels from features.txt, add subject and 
## activity labels and tidy imported labels
features <- c(read.table("./UCI HAR Dataset//features.txt", 
                         colClasses="character")[,2])
col_names <- make.names(c("subject", "activity", features), unique=TRUE)
col_names <- gsub("^t", "time", col_names)
col_names <- gsub("^f", "frequency", col_names)
col_names <- gsub("BodyBody", "Body", col_names)
col_names <- gsub("Acc", "Acceleration", col_names)
col_names <- gsub("\\.\\.\\.", "\\.", col_names)
col_names <- gsub("\\.\\.", "", col_names)



## Add tidied column names to table
setnames(combined_data, 1:563, col_names)

## Select only mean and std columns
mean_std_data <- select(combined_data, subject, activity, 
                        contains(".mean"), contains(".std"))

## Sort table by subject and activity
mean_std_data <- arrange(mean_std_data, subject, activity)

## Merge activity labels to activity numbers
activity_labels <- c(read.table("./UCI HAR Dataset//activity_labels.txt", 
                                colClasses='character')[,2])
mean_std_data <- mutate(mean_std_data, activity = activity_labels[activity])

## For each subject, find the average for each activity
final_tidy <- mean_std_data %>%
              group_by(subject, activity) %>%
              summarise_each(funs(mean))

# Write data set to file
write.table(final_tidy, "final_tidy.txt", row.names = FALSE)
