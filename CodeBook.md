CodeBook
This code book shows the Data source, describes the Data and explains briefly some transformations realized to get tidy data.

Data source
The data should be downloaded on the following link: 
 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

It???s possible to see the descriptions of the Data on the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data: some details
The experiments, according to the README of the UCI HAR Dataset, ???have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details???. 
In each record, according to the README of the UCI HAR Dataset, is possible to see: ???Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration; triaxial angular velocity from the gyroscope; s 561-feature vector with time and frequency domain variables and its activity label and an identifier of the subject who carried out the experiment???.

The data
The UCI HAR Dataset, according to the README of the UCI  HAR Dataset presents in list below, includes: README.txt; features_info.txt, which shows information about the variables used on the feature vector; features.txt, which list all features; activity_labels.txt, which links the class labels with their activity name; train/X_train.txt, which shows the Training set; train/y_train.txt, which shows the Training labels; test/X_test.txt, which shows the Test set and test/y_test.txt, which shows the Test labels.
The UCI HAR Dataset, according to the README of the UCI  HAR Dataset, has also the following files: train/subject_train.txt, where each row identifies the subject who performed the activity for each window sample; train/Inertial Signals/total_acc_x_train.txt, total_acc_x_train.txt and total_acc_z_train.txt files for Y and Z axis, which show the acceleration signal from the smartphone accelerometer X axis in standard gravity units ???g???; train/Inertial Signals/body_acc_x_train.txt, which shows the body acceleration signal obtained by subtracting the gravity from the total acceleration and train/Inertial Signals/body_gyro_x_train.txt, which shows the angular velocity vector measured by the gyroscope for each window sample.

Transformation 
According to the purpose of the Getting and Cleaning Data Course Project, we should create one R script called run_analysis.R that follow the steps below: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

After follow each step below, the results show one dataset which merged the training and the test sets, created a different dataset, extracted the measurements on the mean and standard deviation in each measurement, named the activities in the dataset, labelled the dataset with descriptive activity names and created an independent tidy dataset. 