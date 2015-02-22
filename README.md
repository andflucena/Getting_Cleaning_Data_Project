According to the purpose of the Getting and Cleaning Data Course Project, we should create one R script called run_analysis.R that follow the steps below: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
We should also put three files in a Github Repo: READ.md, CodeBook.Md and run_analysis.R. 

Data
The data should be downloaded on the following link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The description about the data can be seen on the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data: details
Each person of a group of 30 volunteers with an age between 19 and 48 years old made six activities (Walking, Walking_Upstairs, Walking_Downstairs, sitting, standing and laying) while wearing a smartphone (Sansung Galaxy S II) on the waist. Using an embedded accelerometer and gyroscope, the experiments captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.  

Step-by-step: what I do
1.Analyze the dataset (train.data, train.labels, train.subjects, test.data, test.labels, test.subjects, features and labels) using read and head functions;
2. Combine files in the dataset listed above using bind functions (rbind and cbind); 
3. Extract features that are mean or standard deviation and create a new data frame; 
4. Create a column list called x;   
5. Create a new data frame using the aggregate function;  
6. Write the dataset as a text file. 
