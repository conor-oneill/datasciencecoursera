# Assignment: Getting and Cleaning Data Course Project
# by Conor O'Neill, February 2016
#
# Script purpose:
# "You should create one R script called run_analysis.R that does the following.
#
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set with the average
#    of each variable for each activity and each subject."

run_analysis <- function(){
  library(data.table)
  
  # Define common directories
  basedir = "UCI HAR Dataset/"
  traindir = paste0(basedir,"train/")
  testdir = paste0(basedir,"test/")
  
  # Read-in training data
  print("Reading in training data...")
  X_train = read.table(paste0(traindir,"X_train.txt"))
  y_train = read.table(paste0(traindir, "y_train.txt"))
  subject_train = read.table(paste0(traindir, "subject_train.txt"))
  
  # Read-in test data
  print("Reading in test data...")
  X_test = read.table(paste0(testdir,"X_test.txt"))
  y_test = read.table(paste0(testdir, "y_test.txt"))
  subject_test = read.table(paste0(testdir, "subject_test.txt"))
  
  # Merge (criterion #1)
  print("Merging training and test data...")
  X <- rbind(X_train, X_test)
  y <- rbind(y_train, y_test)
  subject <- rbind(subject_train, subject_test)
  
  # Read-in features and activities
  print("Reading in features and activities...")
  featuresAll <- read.table(paste0(basedir,"features.txt"), col.names = c("featureIndex", "featureName"))
  activities <- read.table(paste0(basedir,"activity_labels.txt"), col.names = c("activityIndex", "activityName"))
  
  # Keep only the mean and std variables (criterion #2)
  print("Getting names and subsetting...")
  featuresSubset <- grep("mean\\(\\)|std\\(\\)",featuresAll$featureName)
  X <- X[, featuresSubset]
  
  # Rename columns (criterion #4)
    # Note, variable names left as labeled in "features.txt" as renaming creates variable names
    # that are too long. Refer to Codebook.md for full descriptions.
  Xnames <- gsub("\\(|\\)|-", "", featuresAll$featureName[featuresSubset])
  Xnames <- gsub("mean", "Mean", Xnames)
  Xnames <- gsub("std", "Std", Xnames)
  names(X) <- Xnames
  names(y) <- "activityId"
  names(subject) <- "subjectId"
  
  # Merge activities and y data to create descriptive activity names (criterion #3)
  activity <- merge(y, activities, by.x="activityId", by.y="activityIndex")$activityName
  
  # Merge data with subject and activity to create final nice dataset (criteria #1-4)
  print("Creating and writing tidy dataset 'data.txt'...")
  data <- cbind(subject, activity, X)
  write.table(data, "data.txt")
  
  # Create a second, independent tidy data set with the average
  #    of each variable for each activity and each subject. (criteron #5)
  print("Creating and writing table of averages, 'averages.txt'...")
  DT <- data.table(data)
  averages <- DT[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(averages, "averages.txt")
  
}