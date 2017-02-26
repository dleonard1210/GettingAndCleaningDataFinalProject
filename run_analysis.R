## Project Instructions:
## You should create one R script called run_analysis.R that does the following.

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.

##
## Note: this script uses the dplyr library
## Read the data into data.frames:
## xtest: the 561 measurement variables for each test subject/activity
## xtrain: the 561 measurement variables for each training subject/activity
## ytest: the activity for each test subject/activity
## ytrain: the activity for each training subject/activity
## subjecttest: the identifier for a test subject for each measurement row
## subjecttrain: the identifier for a training subject for each measurement row
## actlabels: maps activity identifiers to friendly names
##

xtest <- tbl_df(read.table("X_test.txt", header = FALSE))
ytest <- tbl_df(read.table("y_test.txt", header = FALSE))
xtrain <- tbl_df(read.table("X_train.txt", header = FALSE))
ytrain <- tbl_df(read.table("y_train.txt", header = FALSE))
subjecttest <- tbl_df(read.table("subject_test.txt", header = FALSE))
subjecttrain <- tbl_df(read.table("subject_train.txt", header = FALSE))
actlabels <- tbl_df(read.table("activity_labels.txt", header = FALSE))

## Set up column names to facilitate the inner join of activity names with activity identifiers
names(actlabels) <- c("activity","activityname")
names(ytest) <- "activity"
names(ytrain) <- "activity"

## Now add the activity names to the test and training activity tables
ytest <- inner_join(ytest,actlabels, by = "activity")
ytrain <- inner_join(ytrain,actlabels, by = "activity")

## Combine all of the data into one big, bodacious table
fulldata <- rbind(cbind(subjecttest, ytest, xtest),cbind(subjecttrain, ytrain, xtrain))

## Add column names to the combined table
features <- read.table("features.txt", header = FALSE)
columnames <- c("subject","activity","activityname",as.character(features[,"V2"]))
names(fulldata) <- columnames

## Create a table that only includes measures that have "-mean()" or "-std()" in the column name
meanstddata <- tbl_df(fulldata[,grep("-mean\\(\\)|-std\\(\\)|^subject|^activity",columnames)])

View(meanstddata)

## Create a table that summarizes meanstddata by subject and activity
groupedMeans <- meanstddata %>% group_by(subject,activityname) %>% summarize_each(funs(mean),-activity)

View(groupedMeans)

## Finally, write out the tidy data
write.table(groupedMeans,file="GroupedMeans.txt", row.names = FALSE)