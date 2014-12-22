# CodeBook Overview

The following describes the variables, data and give more information on the transformations performed to obtain the tidy data set end result.

## Tidy Data Set Variables Breakdown

### Subjects

30 Subjects in data set found in subject_train.txt and subject_test.txt (numeric range from 1-30). 

* 70% did training and 30% did the test.

### Activity Lables

6 Activities performed and found in y_train.txt and y_test.txt (numeric range from 1-6)

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

### Features Lables

Originally 561 features and found in /Inertial Signals/variables of the feature vector for each pattern. Manupilated and included in the tidy data set:

 [1] "Subject"                           "Activity"                         
 [3] "tBodyAccMeanX"                     "tBodyAccMeanY"                    
 [5] "tBodyAccMeanZ"                     "tBodyAccStdX"                     
 [7] "tBodyAccStdY"                      "tBodyAccStdZ"                     
 [9] "tGravityAccMeanX"                  "tGravityAccMeanY"                 
[11] "tGravityAccMeanZ"                  "tGravityAccStdX"                  
[13] "tGravityAccStdY"                   "tGravityAccStdZ"                  
[15] "tBodyAccJerkMeanX"                 "tBodyAccJerkMeanY"                
[17] "tBodyAccJerkMeanZ"                 "tBodyAccJerkStdX"                 
[19] "tBodyAccJerkStdY"                  "tBodyAccJerkStdZ"                 
[21] "tBodyGyroMeanX"                    "tBodyGyroMeanY"                   
[23] "tBodyGyroMeanZ"                    "tBodyGyroStdX"                    
[25] "tBodyGyroStdY"                     "tBodyGyroStdZ"                    
[27] "tBodyGyroJerkMeanX"                "tBodyGyroJerkMeanY"               
[29] "tBodyGyroJerkMeanZ"                "tBodyGyroJerkStdX"                
[31] "tBodyGyroJerkStdY"                 "tBodyGyroJerkStdZ"                
[33] "tBodyAccMagMean"                   "tBodyAccMagStd"                   
[35] "tGravityAccMagMean"                "tGravityAccMagStd"                
[37] "tBodyAccJerkMagMean"               "tBodyAccJerkMagStd"               
[39] "tBodyGyroMagMean"                  "tBodyGyroMagStd"                  
[41] "tBodyGyroJerkMagMean"              "tBodyGyroJerkMagStd"              
[43] "fBodyAccMeanX"                     "fBodyAccMeanY"                    
[45] "fBodyAccMeanZ"                     "fBodyAccStdX"                     
[47] "fBodyAccStdY"                      "fBodyAccStdZ"                     
[49] "fBodyAccMeanFreqX"                 "fBodyAccMeanFreqY"                
[51] "fBodyAccMeanFreqZ"                 "fBodyAccJerkMeanX"                
[53] "fBodyAccJerkMeanY"                 "fBodyAccJerkMeanZ"                
[55] "fBodyAccJerkStdX"                  "fBodyAccJerkStdY"                 
[57] "fBodyAccJerkStdZ"                  "fBodyAccJerkMeanFreqX"            
[59] "fBodyAccJerkMeanFreqY"             "fBodyAccJerkMeanFreqZ"            
[61] "fBodyGyroMeanX"                    "fBodyGyroMeanY"                   
[63] "fBodyGyroMeanZ"                    "fBodyGyroStdX"                    
[65] "fBodyGyroStdY"                     "fBodyGyroStdZ"                    
[67] "fBodyGyroMeanFreqX"                "fBodyGyroMeanFreqY"               
[69] "fBodyGyroMeanFreqZ"                "fBodyAccMagMean"                  
[71] "fBodyAccMagStd"                    "fBodyAccMagMeanFreq"              
[73] "fBodyBodyAccJerkMagMean"           "fBodyBodyAccJerkMagStd"           
[75] "fBodyBodyAccJerkMagMeanFreq"       "fBodyBodyGyroMagMean"             
[77] "fBodyBodyGyroMagStd"               "fBodyBodyGyroMagMeanFreq"         
[79] "fBodyBodyGyroJerkMagMean"          "fBodyBodyGyroJerkMagStd"          
[81] "fBodyBodyGyroJerkMagMeanFreq"      "angletBodyAccMeangravity"         
[83] "angletBodyAccJerkMeangravityMean"  "angletBodyGyroMeangravityMean"    
[85] "angletBodyGyroJerkMeangravityMean" "angleXgravityMean"                
[87] "angleYgravityMean"                 "angleZgravityMean" 

__*Full details in features_info.txt included in the archive*__

## Transformation Details
* Data input is obtained and introduced into R using the read.csv()
* Data manipulation is done internally in R with the use of data frames
* Features lables is manipulated using the gsub() function to produce more readable variable names
* Data output is obtained using the write.table() function

## Output Files
* tidy.txt (_Full tidy set_)
* tidyMean.txt (_Tidy data set of the avarage of each variable for each activity and each subject_)
