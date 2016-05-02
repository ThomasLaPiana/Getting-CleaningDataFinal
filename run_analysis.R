## Set working directory and import required packages
setwd("~/JHU DataScience Courses/R Directory/Getting-CleaningDataFinal.git")
library(data.table)
library(plyr)
library(dplyr)
library(Hmisc)

## Read in the Training Sets
X_train = data.table(read.table('UCI_HAR_Dataset/train/X_train.txt'))
y_train = data.table(read.table('UCI_HAR_Dataset/train/y_train.txt'))
subject_train = data.table(read.table('UCI_HAR_Dataset/train/subject_train.txt'))

## Read in the Test Sets
X_test = data.table(read.table('UCI_HAR_Dataset/test/X_test.txt'))
y_test = data.table(read.table('UCI_HAR_Dataset/test/y_test.txt'))
subject_test = data.table(read.table('UCI_HAR_Dataset/test/subject_test.txt'))

##Consolidate the Data Sets
all_data = rbind(cbind(X_train,y_train,subject_train),cbind(X_test,y_test,subject_test))

## Load in the Column Names
raw_column_names = read.table('UCI_HAR_Dataset/features.txt')[2]
column_names = as.character(raw_column_names$V2)
column_names = append(column_names,c('Activity','Subject'))

## Assign the correct names to the columns
names(all_data) = column_names

## Select only the columns that we need
cleaned_data = select(all_data,matches('mean()|std()|Activity|Subject'))

##Convert numeric Activity factors to string factors
cleaned_data$Activity = mapvalues(cleaned_data$Activity, from = c(1,2,3,4,5,6), to = c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING'))
cleaned_data$Activity = as.factor(cleaned_data$Activity)

## Convert subject to factor
cleaned_data$Subject = as.factor(cleaned_data$Subject)

## Group the data and summarise it 
grouped_data = cleaned_data %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))

write.table(cleaned_data,'Cleaned_Data.csv')
write.table(grouped_data,'Grouped_Data.csv',row.name=FALSE)