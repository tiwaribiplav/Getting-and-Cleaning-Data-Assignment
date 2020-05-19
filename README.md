# Getting-and-Cleaning-Data-Assignment
The repository includes the script and code book file that are the part of the course project for Getting and Cleaning Data.
The codes performs analysis on human activity recognition using smart phones data set.

Dataset
  
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files
  
  CodeBook.md : It describes the variables, the data and the transformations performed to clean the data.
  
  run_analysis.R : It performs the necessary 5 steps as specified in the course project for Getting and Cleaning Data. The steps are:
  
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set.
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  tidy_data.txt : It is the output of step 5 mentioned in above section.
