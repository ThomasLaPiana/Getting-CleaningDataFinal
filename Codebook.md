Codebook
========

Variables in the output tidy data set
--------------------------------------

Name includes...| What It Means
----------------|---------------------------------------------------------------------------------------------
subject         | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity        | Activity name
Gyro or Acc     |  Measuring instrument (Accelerometer or Gyroscope)
Jerk            |  Jerk signal
Mag             |  Magnitude of the signals calculated using the Euclidean Norm

Dataset structure
-----------------


```
str(cleaned_data)
```
```
> str(grouped_data)
Classes ‘grouped_dt’, ‘tbl_dt’, ‘tbl’, ‘tbl_dt’, ‘tbl’, ‘data.table’ and 'data.frame':	180 obs. of  88 variables:
 $ Subject                             : Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 3 3 3 3 ...
 $ Activity                            : Factor w/ 6 levels "LAYING","SITTING",..: 3 2 1 4 5 6 3 2 1 4 ...
 $ tBodyAcc-mean()-X                   : num  0.279 0.261 0.222 0.277 0.289 ...
 $ tBodyAcc-mean()-Y                   : num  -0.01614 -0.00131 -0.04051 -0.01738 -0.00992 ...
 $ tBodyAcc-mean()-Z                   : num  -0.111 -0.105 -0.113 -0.111 -0.108 ...
 $ tBodyAcc-std()-X                    : num  -0.996 -0.977 -0.928 -0.284 0.03 ...
 $ tBodyAcc-std()-Y                    : num  -0.9732 -0.9226 -0.8368 0.1145 -0.0319 ...
 $ tBodyAcc-std()-Z                    : num  -0.98 -0.94 -0.826 -0.26 -0.23 ...
 $ tGravityAcc-mean()-X                : num  0.943 0.832 -0.249 0.935 0.932 ...
 $ tGravityAcc-mean()-Y                : num  -0.273 0.204 0.706 -0.282 -0.267 ...
 $ tGravityAcc-mean()-Z                : num  0.0135 0.332 0.4458 -0.0681 -0.0621 ...
 $ tGravityAcc-std()-X                 : num  -0.994 -0.968 -0.897 -0.977 -0.951 ...
 $ tGravityAcc-std()-Y                 : num  -0.981 -0.936 -0.908 -0.971 -0.937 ...
 $ tGravityAcc-std()-Z                 : num  -0.976 -0.949 -0.852 -0.948 -0.896 ...
 $ tBodyAccJerk-mean()-X               : num  0.0754 0.0775 0.0811 0.074 0.0542 ...
 $ tBodyAccJerk-mean()-Y               : num  0.007976 -0.000619 0.003838 0.028272 0.02965 ...
 $ tBodyAccJerk-mean()-Z               : num  -0.00369 -0.00337 0.01083 -0.00417 -0.01097 ...
 $ tBodyAccJerk-std()-X                : num  -0.9946 -0.9864 -0.9585 -0.1136 -0.0123 ...
 $ tBodyAccJerk-std()-Y                : num  -0.986 -0.981 -0.924 0.067 -0.102 ...
 $ tBodyAccJerk-std()-Z                : num  -0.992 -0.988 -0.955 -0.503 -0.346 ...
 $ tBodyGyro-mean()-X                  : num  -0.024 -0.0454 -0.0166 -0.0418 -0.0351 ...
 $ tBodyGyro-mean()-Y                  : num  -0.0594 -0.0919 -0.0645 -0.0695 -0.0909 ...
 $ tBodyGyro-mean()-Z                  : num  0.0748 0.0629 0.1487 0.0849 0.0901 ...
 $ tBodyGyro-std()-X                   : num  -0.987 -0.977 -0.874 -0.474 -0.458 ...
 $ tBodyGyro-std()-Y                   : num  -0.9877 -0.9665 -0.9511 -0.0546 -0.1263 ...
 $ tBodyGyro-std()-Z                   : num  -0.981 -0.941 -0.908 -0.344 -0.125 ...
 $ tBodyGyroJerk-mean()-X              : num  -0.0996 -0.0937 -0.1073 -0.09 -0.074 ...
 $ tBodyGyroJerk-mean()-Y              : num  -0.0441 -0.0402 -0.0415 -0.0398 -0.044 ...
 $ tBodyGyroJerk-mean()-Z              : num  -0.049 -0.0467 -0.0741 -0.0461 -0.027 ...
 $ tBodyGyroJerk-std()-X               : num  -0.993 -0.992 -0.919 -0.207 -0.487 ...
 $ tBodyGyroJerk-std()-Y               : num  -0.995 -0.99 -0.968 -0.304 -0.239 ...
 $ tBodyGyroJerk-std()-Z               : num  -0.992 -0.988 -0.958 -0.404 -0.269 ...
 $ tBodyAccMag-mean()                  : num  -0.9843 -0.9485 -0.8419 -0.137 0.0272 ...
 $ tBodyAccMag-std()                   : num  -0.9819 -0.9271 -0.7951 -0.2197 0.0199 ...
 $ tGravityAccMag-mean()               : num  -0.9843 -0.9485 -0.8419 -0.137 0.0272 ...
 $ tGravityAccMag-std()                : num  -0.9819 -0.9271 -0.7951 -0.2197 0.0199 ...
 $ tBodyAccJerkMag-mean()              : num  -0.9924 -0.9874 -0.9544 -0.1414 -0.0894 ...
 $ tBodyAccJerkMag-std()               : num  -0.9931 -0.9841 -0.9282 -0.0745 -0.0258 ...
 $ tBodyGyroMag-mean()                 : num  -0.9765 -0.9309 -0.8748 -0.161 -0.0757 ...
 $ tBodyGyroMag-std()                  : num  -0.979 -0.935 -0.819 -0.187 -0.226 ...
 $ tBodyGyroJerkMag-mean()             : num  -0.995 -0.992 -0.963 -0.299 -0.295 ...
 $ tBodyGyroJerkMag-std()              : num  -0.995 -0.988 -0.936 -0.325 -0.307 ...
 $ fBodyAcc-mean()-X                   : num  -0.9952 -0.9796 -0.9391 -0.2028 0.0382 ...
 $ fBodyAcc-mean()-Y                   : num  -0.97707 -0.94408 -0.86707 0.08971 0.00155 ...
 $ fBodyAcc-mean()-Z                   : num  -0.985 -0.959 -0.883 -0.332 -0.226 ...
 $ fBodyAcc-std()-X                    : num  -0.996 -0.9764 -0.9244 -0.3191 0.0243 ...
 $ fBodyAcc-std()-Y                    : num  -0.972 -0.917 -0.834 0.056 -0.113 ...
 $ fBodyAcc-std()-Z                    : num  -0.978 -0.934 -0.813 -0.28 -0.298 ...
 $ fBodyAcc-meanFreq()-X               : num  0.0865 -0.0495 -0.1588 -0.2075 -0.3074 ...
 $ fBodyAcc-meanFreq()-Y               : num  0.1175 0.0759 0.0975 0.1131 0.0632 ...
 $ fBodyAcc-meanFreq()-Z               : num  0.2449 0.2388 0.0894 0.0497 0.2943 ...
 $ fBodyAccJerk-mean()-X               : num  -0.9946 -0.9866 -0.9571 -0.1705 -0.0277 ...
 $ fBodyAccJerk-mean()-Y               : num  -0.9854 -0.9816 -0.9225 -0.0352 -0.1287 ...
 $ fBodyAccJerk-mean()-Z               : num  -0.991 -0.986 -0.948 -0.469 -0.288 ...
 $ fBodyAccJerk-std()-X                : num  -0.9951 -0.9875 -0.9642 -0.1336 -0.0863 ...
 $ fBodyAccJerk-std()-Y                : num  -0.987 -0.983 -0.932 0.107 -0.135 ...
 $ fBodyAccJerk-std()-Z                : num  -0.992 -0.988 -0.961 -0.535 -0.402 ...
 $ fBodyAccJerk-meanFreq()-X           : num  0.314 0.257 0.132 -0.209 -0.253 ...
 $ fBodyAccJerk-meanFreq()-Y           : num  0.0392 0.0475 0.0245 -0.3862 -0.3376 ...
 $ fBodyAccJerk-meanFreq()-Z           : num  0.13858 0.09239 0.02439 -0.18553 0.00937 ...
 $ fBodyGyro-mean()-X                  : num  -0.986 -0.976 -0.85 -0.339 -0.352 ...
 $ fBodyGyro-mean()-Y                  : num  -0.989 -0.9758 -0.9522 -0.1031 -0.0557 ...
 $ fBodyGyro-mean()-Z                  : num  -0.9808 -0.9513 -0.9093 -0.2559 -0.0319 ...
 $ fBodyGyro-std()-X                   : num  -0.987 -0.978 -0.882 -0.517 -0.495 ...
 $ fBodyGyro-std()-Y                   : num  -0.9871 -0.9623 -0.9512 -0.0335 -0.1814 ...
 $ fBodyGyro-std()-Z                   : num  -0.982 -0.944 -0.917 -0.437 -0.238 ...
 $ fBodyGyro-meanFreq()-X              : num  -0.12029 0.18915 -0.00355 0.01478 -0.10045 ...
 $ fBodyGyro-meanFreq()-Y              : num  -0.0447 0.0631 -0.0915 -0.0658 0.0826 ...
 $ fBodyGyro-meanFreq()-Z              : num  0.100608 -0.029784 0.010458 0.000773 -0.075676 ...
 $ fBodyAccMag-mean()                  : num  -0.9854 -0.9478 -0.8618 -0.1286 0.0966 ...
 $ fBodyAccMag-std()                   : num  -0.982 -0.928 -0.798 -0.398 -0.187 ...
 $ fBodyAccMag-meanFreq()              : num  0.2846 0.2367 0.0864 0.1906 0.1192 ...
 $ fBodyBodyAccJerkMag-mean()          : num  -0.9925 -0.9853 -0.9333 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMag-std()           : num  -0.993 -0.982 -0.922 -0.103 -0.104 ...
 $ fBodyBodyAccJerkMag-meanFreq()      : num  0.4222 0.3519 0.2664 0.0938 0.0765 ...
 $ fBodyBodyGyroMag-mean()             : num  -0.985 -0.958 -0.862 -0.199 -0.186 ...
 $ fBodyBodyGyroMag-std()              : num  -0.978 -0.932 -0.824 -0.321 -0.398 ...
 $ fBodyBodyGyroMag-meanFreq()         : num  -0.028606 -0.000262 -0.139775 0.268844 0.349614 ...
 $ fBodyBodyGyroJerkMag-mean()         : num  -0.995 -0.99 -0.942 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMag-std()          : num  -0.995 -0.987 -0.933 -0.382 -0.392 ...
 $ fBodyBodyGyroJerkMag-meanFreq()     : num  0.334 0.185 0.176 0.191 0.19 ...
 $ angle(tBodyAccMean,gravity)         : num  -0.000222 0.027442 0.021366 0.060454 -0.002695 ...
 $ angle(tBodyAccJerkMean),gravityMean): num  0.02196 0.02971 0.00306 -0.00793 0.08993 ...
 $ angle(tBodyGyroMean,gravityMean)    : num  -0.03379 0.0677 -0.00167 0.01306 0.06334 ...
 $ angle(tBodyGyroJerkMean,gravityMean): num  -0.0279 -0.0649 0.0844 -0.0187 -0.04 ...
 $ angle(X,gravityMean)                : num  -0.743 -0.591 0.427 -0.729 -0.744 ...
 $ angle(Y,gravityMean)                : num  0.2702 -0.0605 -0.5203 0.277 0.2672 ...
 $ angle(Z,gravityMean)                : num  0.0123 -0.218 -0.3524 0.0689 0.065 ...
 - attr(*, ".internal.selfref")=<externalptr> 
 - attr(*, "vars")=List of 1
  ..$ : symbol Subject 
```