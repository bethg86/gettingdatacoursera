## Getting and Cleaning Data Course Project

The file run_analysis.R can be used to transform the raw data contained at the below link into a tidy data set.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

It is assumed that run_analysis.R will be run from a directory containing the unzipped data set.

* Run this command: source('run_analysis.R')

The working directory should now contain a file named final_tidy.txt  In order to read this file into R, run the following command:
* outputname <- read.table(filepath, header = TRUE)