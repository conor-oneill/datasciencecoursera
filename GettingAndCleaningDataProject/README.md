# README #
Conor O'Neill

This is my assignment submission for the Coursera
course "Getting and Cleaning Data" through JHU.

## Files ##
* run_analysis.R, the R program
* README.md, this readme file
* codebook.md, info on the data and how it was produced

## What it does ##
* Uses data from "Human Activity Recognition Using Smartphones Dataset Version 1.0" (read more here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones )
* Tidies this data into a single dataset with appropriate headers and descriptors
* Retains only info relating to the mean or std of a quantity
* Stores this tidy dataset as 'data.txt'
* Creates a second tidy dataset containing the means of each quantity by activity and subject, stored as 'averages.txt'

## Usage ##
* Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Unzip it
* Save run_analysis.R in directory in which you unzipped the above
* In R, run `source("run_analysis.R")`
* In R, run `run_analysis()`
* This will produce the aforementioned tidied datasets
* Read those datasets in R using `read.table("data.txt")` and `read.table("averages.txt")`