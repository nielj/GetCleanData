## run_analysis.R - Create a tidy dataset and extract a second tidy dataset with the subject, activity means

## Instructions
#    You should create one R script called run_analysis.R that does the following:
#    1 Merges the training and the test sets to create one data set.
#    2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#    3 Uses descriptive activity names to name the activities in the data set
#    4 Appropriately labels the data set with descriptive variable names. 
#    5 From the data set in step 4, creates a second, independent tidy data set with the average
#      of each variable for each activity and each subject.

#  load plyr package for use in column means
install.packages("plyr")
library(plyr)

#  Read activity lables into data frame
activityLables <- read.csv("UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "", quote = "\"")

#  read feature lables and make factor
featuresLables <- read.csv("UCI HAR Dataset/features.txt", header = FALSE, sep = "", quote = "\"")
featuresLables <- featuresLables[,2]
#  remove the ()- for R reading
featuresLables = gsub('-mean', 'Mean', featuresLables); featuresLables = gsub('-std', 'Std', featuresLables)
featuresLables = gsub('[-()]', '', featuresLables); featuresLables = gsub(',', '', featuresLables)

## Merges the training and the test sets to create one data set.
## Training Data
#  make a data frame from the training data under UCI HAR Dataset/train/ folder
trainingSubjects <- read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE, sep = "", quote = "\"")
trainingActivities <- read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = "", quote = "\"")
trainingData <- read.csv("UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "", quote = "\"")

#  subsitute the activity numbers with the actual activity name
trainingActivities[,1] <- activityLables[trainingActivities[ ,1], 2]

# bind the training subjects, activity and data together
trainTmp <- cbind(trainingSubjects, trainingActivities)
trainingData <- cbind(trainTmp, trainingData)

## Test Data
testSubjects <- read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = "", quote = "\"")
testActivities <- read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = "", quote = "\"")
testData <- read.csv("UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "", quote = "\"")

#  subsitute the activity numbers with the actual activity name
testActivities[,1] <- activityLables[testActivities[ ,1], 2]

# bind the training subjects, activity and data together
testTmp <- cbind(testSubjects, testActivities)
testData <- cbind(testTmp, testData)

# combine the training and test data
data <- rbind(trainingData, testData)

# add the subject, activity and features lables as veriable names to the data
names(data) <- c("Subject", "Activity", featuresLables)

## Extract only the measurements on the mean and standard deviation for each measurement.
# only columns with Mean and Std in the names
criteria <- grep(".*Mean.*|.*Std.*", names(data))
data <- data[,c(1:2,criteria)]
write.table(tidyData, "tidyData.txt", row.name=FALSE)

## From the data set in step 4, creates a second, independent tidy data set with the average
#  of each variable for each activity and each subject (exclude columns 1 and 2)
tidyMeanData <- ddply(data, .(Subject, Activity), function(x) colMeans(x[,-(1:2)]))
write.table(tidyMeanData, "tidyMeanData.txt", row.name=FALSE)
