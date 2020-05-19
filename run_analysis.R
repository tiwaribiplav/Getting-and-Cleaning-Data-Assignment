#merging the test and train data
x_merged <- rbind(x_train, x_test)
y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)
merged_data <- cbind(subject_merged, x_merged, y_merged)

#extracting measurements on only mean and standard deviation for each measurement
extract_data <- merged_data %>% select(subject, code, contains("mean"), contains("std"))

#using descriptive activity names to name the activities
extract_data$code <- activity_labels[extract_data$code,2]

#labeling the dataset with appropriate descriptive variable names
names(extract_data)[2] = "activity"
names(extract_data) <- gsub("Acc", "Accelerometer", names(extract_data))
names(extract_data) <- gsub("Gyro", "Gyroscope", names(extract_data))
names(extract_data) <- gsub("BodyBody", "Body", names(extract_data))
names(extract_data) <- gsub("Mag", "Magnitude", names(extract_data))
names(extract_data) <- gsub("^t", "Time", names(extract_data))
names(extract_data) <- gsub("^f", "Frequency", names(extract_data))
names(extract_data) <- gsub("tBody", "TimeBody", names(extract_data))
names(extract_data) <- gsub("-mean()", "Mean", names(extract_data), ignore.case = TRUE)
names(extract_data) <- gsub("-std()", "STD", names(extract_data), ignore.case = TRUE)
names(extract_data) <- gsub("-freq", "Frequency", names(extract_data), ignore.case = TRUE)
names(extract_data) <- gsub("angle", "Angle", names(extract_data))
names(extract_data) <- gsub("gravity", "Gravity", names(extract_data))

#creating tidy data set with the average of each variable for each activity and each subject
tidy_data <- extract_data %>% group_by(subject, activity) %>% summarize_all(funs(mean))
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)