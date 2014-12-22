# Repository Summary

The Getting and Cleaning Data repository contains all the information to preduce a tidy dataset from the data included in the UCI HAR Dataset.zip file obtained from the UC Irvine Machine Learning Repository - Human Activity Recognition Using Smartphones Data Set.

Website Link: (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data Set Link: (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The Data Set represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained.

## Summary information about the dataset

The data set contains two subsets (Training- and Test Data Sets). The subjects, activities, features (veriabbles) and actual observation data are all in separate files for each data subset. A detailed description can be found in the README.txt included in the data set archive.

## Steps to obtain the script and nessarary files

* Download the data set and unzip archive into R working directory
* Download the ru_analysis.R file and add to R working directory

## What the script does

* Load required packages
* Read the data sets into a data frame for each set (Training and Test)
* Read the features/veriable/lables, subjects and activities
* Change the features/veriable/lables to be more understandable and usable in R
* Bind the information together for each data set
* Merge/join the two data sets together to form one data set
* Extract only the measurements on the mean and standard deviation for each measurement (requirement from assignment)
* creates a second, independent tidy data set with the average of each variable for each activity and each subject (requirement from assignment)

## Output produced
* tidyData.txt (Tidy data set of all combined data)
* tidyMeanData.txt (Tidy data set of the avarage of each variable for each activity and each subject)

## The CodeBook
The CodeBook.md file contains the veriables discriptions, the described data, transformations and/or work performed to clean/tidy the data
