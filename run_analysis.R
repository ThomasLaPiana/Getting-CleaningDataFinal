## Set working directory and import required packages
setwd("~/JHU DataScience Courses/R Directory/Getting-CleaningDataFinal.git")
library(data.table)
library(plyr)
library(dplyr)
library(Hmisc)

## Read in the Training Sets
X_train = data.table(read.table('UCI_HAR_Dataset/train/X_train.txt'))
y_train = data.table(read.table('UCI_HAR_Dataset/train/y_train.txt'))

## Read in the Test Sets
X_test = data.table(read.table('UCI_HAR_Dataset/test/X_test.txt'))
y_test = data.table(read.table('UCI_HAR_Dataset/test/y_test.txt'))

##Consolidate the Data Sets
all_data = rbind(cbind(X_train,y_train),cbind(X_test,y_test))

## Load in the Column Names
raw_column_names = read.table('UCI_HAR_Dataset/features.txt')[2]
column_names = as.character(raw_column_names$V2)
column_names = append(column_names,'Activity')

## Assign the correct names to the columns
names(all_data) = column_names

## Select only the columns that we need
cleaned_data = select(all_data,matches('mean()|std()|Activity'))

## Group the data and summarise it 
grouped_data = cleaned_data %>% group_by_('Activity') %>% summarise_each(funs(mean))

write.csv(cleaned_data,'Cleaned_Data.csv')
write.csv(grouped_data,'Grouped_Data.csv')