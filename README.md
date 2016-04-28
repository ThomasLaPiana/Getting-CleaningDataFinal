# Public Phone Sensor Data Analysis  

For this project, a dirty and split up set of data was imported and output as two tidy datasets.  

## Extraction  

The Data was extracted from their locations and then bound together to form one large dataset that included all available data.  

## Transformation

The feature names were also added as column names for tidyness.  
Using the dplyr package, the irrelevant columns were dropped from the dataframe.  
Also using the dplyr package, the separate dataset was created that groups the information by activity and summarises all of the columns, crunching it down to a 6 row dataframe (one for each activity)  

## Loading  

For this project, the data wasn't loaded into a database but was simply written out to two CSV files, both of which are located in this repo.  