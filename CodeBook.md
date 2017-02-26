---
title: "'Getting and Cleaning Data' Course Final Project"
author: "David M. Leonard"
date: "February 25, 2017"
output: html_document
---

## Study Description
This is the final project for the Coursera "Getting and Cleaning Data" course. The data is a single table created by combining and summarizing information extracted from the Human Activity Recognition (HAR) database, which was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. For a complete description of the source data, visit the [University of California at Irvine Data Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The single result table created by this project provides the mean values, grouped by subject and activity, for variables that represent a mean or standard deviation value in the source data.

## File Statistics
**Table Name**: GroupedMeans.txt  
**Header?** Yes  
**Observations**: 180  
**Variables**: 68  

## File Structure
Single-level file; each row gives mean values of 66 variables for one subject/activity

## File Variables
The table consists of 68 columns of data; the first two are grouping values:  
**Subject**: an integer identifying a test subject  
**Activity**: a factor representing an activity; there are 6 possible values:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAYING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SITTING   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_DOWNSTAIRS   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING_UPSTAIRS   

The remaining columns each represent the mean of a set of values that are themselves either a mean or standard deviation measurement of a sensor signal, either from the smartphone's accelerometer or  gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern; '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of values that were estimated from these signals and whose mean values were included in this data set are:  

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mean(): Mean value  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;std(): Standard deviation  

All of the variables (other than subject and activity) are numeric values.

## Table of Variables  

Variable                      | Data Type    |                     
------------------------------|--------------|
"subject"                     | Numeric      |     
"activityname"                | Factor       |    
"tBodyAcc-mean()-X"           | Numeric      |     
"tBodyAcc-mean()-Y"           | Numeric      |  
"tBodyAcc-mean()-Z"           | Numeric      |     
"tBodyAcc-std()-X"            | Numeric      |  
"tBodyAcc-std()-Y"            | Numeric      |  
"tBodyAcc-std()-Z"            | Numeric      |  
"tGravityAcc-mean()-X"        | Numeric      |  
"tGravityAcc-mean()-Y"        | Numeric      |  
"tGravityAcc-mean()-Z"        | Numeric      |  
"tGravityAcc-std()-X"         | Numeric      |  
"tGravityAcc-std()-Y"         | Numeric      |  
"tGravityAcc-std()-Z"         | Numeric      |  
"tBodyAccJerk-mean()-X"       | Numeric      |  
"tBodyAccJerk-mean()-Y"       | Numeric      |  
"tBodyAccJerk-mean()-Z"       | Numeric      |  
"tBodyAccJerk-std()-X"        | Numeric      |  
"tBodyAccJerk-std()-Y"        | Numeric      |  
"tBodyAccJerk-std()-Z"        | Numeric      |  
"tBodyGyro-mean()-X"          | Numeric      |  
"tBodyGyro-mean()-Y"          | Numeric      |  
"tBodyGyro-mean()-Z"          | Numeric      |  
"tBodyGyro-std()-X"           | Numeric      |  
"tBodyGyro-std()-Y"           | Numeric      |  
"tBodyGyro-std()-Z"           | Numeric      |  
"tBodyGyroJerk-mean()-X"      | Numeric      |  
"tBodyGyroJerk-mean()-Y"      | Numeric      |  
"tBodyGyroJerk-mean()-Z"      | Numeric      |  
"tBodyGyroJerk-std()-X"       | Numeric      |  
"tBodyGyroJerk-std()-Y"       | Numeric      |  
"tBodyGyroJerk-std()-Z"       | Numeric      |  
"tBodyAccMag-mean()"          | Numeric      |  
"tBodyAccMag-std()"           | Numeric      |  
"tGravityAccMag-mean()"       | Numeric      |  
"tGravityAccMag-std()"        | Numeric      |  
"tBodyAccJerkMag-mean()"      | Numeric      |  
"tBodyAccJerkMag-std()"       | Numeric      |  
"tBodyGyroMag-mean()"         | Numeric      |  
"tBodyGyroMag-std()"          | Numeric      |  
"tBodyGyroJerkMag-mean()"     | Numeric      |  
"tBodyGyroJerkMag-std()"      | Numeric      |  
"fBodyAcc-mean()-X"           | Numeric      |  
"fBodyAcc-mean()-Y"           | Numeric      |  
"fBodyAcc-mean()-Z"           | Numeric      |  
"fBodyAcc-std()-X"            | Numeric      |  
"fBodyAcc-std()-Y"            | Numeric      |  
"fBodyAcc-std()-Z"            | Numeric      |  
"fBodyAccJerk-mean()-X"       | Numeric      |  
"fBodyAccJerk-mean()-Y"       | Numeric      |  
"fBodyAccJerk-mean()-Z"       | Numeric      |  
"fBodyAccJerk-std()-X"        | Numeric      |  
"fBodyAccJerk-std()-Y"        | Numeric      |  
"fBodyAccJerk-std()-Z"        | Numeric      |  
"fBodyGyro-mean()-X"          | Numeric      |  
"fBodyGyro-mean()-Y"          | Numeric      |  
"fBodyGyro-mean()-Z"          | Numeric      |  
"fBodyGyro-std()-X"           | Numeric      |  
"fBodyGyro-std()-Y"           | Numeric      |  
"fBodyGyro-std()-Z"           | Numeric      |  
"fBodyAccMag-mean()"          | Numeric      |  
"fBodyAccMag-std()"           | Numeric      |  
"fBodyBodyAccJerkMag-mean()"  | Numeric      |  
"fBodyBodyAccJerkMag-std()"   | Numeric      |  
"fBodyBodyGyroMag-mean()"     | Numeric      |  
"fBodyBodyGyroMag-std()"      | Numeric      |  
"fBodyBodyGyroJerkMag-mean()" | Numeric      |  
"fBodyBodyGyroJerkMag-std()"  | Numeric      |  
------------------------------|--------------|  
