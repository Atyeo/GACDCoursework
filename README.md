# Getting and Cleaning Data Coursework Assignment

The purpose of this R script is to analyse accelerometer data collected from a Samsung mobile phone during six types of physical activity.

The data can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Once the data is downloaded and unzipped, place the run_analysis.R R script into the UCI HAR Dataset folder

Running the R script will produce a table that is outputted to a text file called 'averages.txt'. This file presents the mean averages of the mean() and std() columns in the data for all six activities grouped by subject.

In order to read the table import the text file and view within R, the following command should be used: read.table('averages.txt', header = TRUE).