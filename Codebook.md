# Getting and Cleaning Data Coursework Assignment

## Explanation of run_analysis.R function

1. Load the 'dplyr' library
2. Import the 'subject', 'activity' and accelerometer data from the text files located in the test folder.
3. Move to the 'train' folder and import the 'subject', 'activity' and accelerometer data from the csv files.
4. Combine the 'subject', 'activity' and accelerometer test and train datasets together into three data frames:
+ subject - contains the subject data
+ y - contains the activity data
+ x - contains the accelerometer data
5. Import the 'features.txt' text file into the 'features' variable. This defines what each variable represents in the accelerometer data (x).
6. Extract the mean() and std() variables from the accelerometer data set and change the header names to the correct description.
7. Convert the activity data in the 'y' data frame to the text description provided in the 'activity_labels.txt' file and change the header name to 'activity'.
8. Change the heading name of the subject data.
9. Combine the 'subject', 'x' and 'y' data frames together into a single data frame called 'data'.
10. Group the data by subject and activity and then calculate the mean of all of the accelerometer data variables for each group and write to the 'averages' data frame.
11. Export the 'averages' tidy data frame to a text file called 'averages.txt'.



