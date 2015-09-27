library(dplyr)

## Import the "test" csv files
setwd("./test")
test_subject <- read.table("subject_test.txt")
test_x <- read.table("X_test.txt")
test_y <- read.table("y_test.txt")

## Set Working Directory to UCI HAR Dataset/train
setwd("../")
setwd("./train")

## Import the "train" csv files
train_subject <- read.table("subject_train.txt")
train_x <- read.table("X_train.txt")
train_y <- read.table("y_train.txt")

## Merge the three test datasets together and remove individual dataframes
subject <- rbind(test_subject, train_subject) 
x <- rbind(test_x, train_x)
y <- rbind(test_y, train_y)
rm(test_subject, test_x, test_y, train_subject, train_x, train_y)

## Add column names to the dataset
setwd("../")
features <- read.table('features.txt')

## only retain the columns that include 'mean' or 'std' in the name
mean_std_cols <- grep('mean\\()|std\\()', features[, 2])
x <- x[, mean_std_cols]

## change the column names
names(x) <- features[mean_std_cols, 2]
rm(features, mean_std_cols)

## convert to activity names
activity <- read.table('activity_labels.txt')
y[, 1] <- activity[y[, 1], 2]
names(y) <- 'activity'
rm(activity)

## change subject column name
names(subject) <- 'subject'

## combine all data into single data frame
data <- cbind(subject, y, x)
rm(subject, y, x)

## calculate mean of each of the activities
data <- group_by(data, subject, activity)
averages <- summarise_each(data, funs(mean))
    
## write averages to text file
write.table(averages, 'averages.txt', row.names = FALSE)