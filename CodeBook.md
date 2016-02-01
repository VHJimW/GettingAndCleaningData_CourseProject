# Getting and Cleaning Data #


## Overview ##
This document contains information about the data and cleaning process form the course project.  Information about the source data can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The objective of this project was to return a subset of this base data as a tidy data set.  The final data set contains average values for the required variables for each subject and activity.

## Variables ##
Below are the variables included in the final result set.  With the exception of the grouping variables activitytype and subject, all remaining variables are the mean of the original values and are numeric.

- activitytype 
- subject
- tbodyaccelerometermeany
- tbodyaccelerometermeanz
- tbodyaccelerometerstdx
- tbodyaccelerometerstdy
- tbodyaccelerometerstdz
- tgravityaccelerometermeanx
- tgravityaccelerometermeany
- tgravityaccelerometermeanz
- tgravityaccelerometerstdx
- tgravityaccelerometerstdy
- tgravityaccelerometerstdz
- tbodyaccelerometerjerkmeanx
- tbodyaccelerometerjerkmeany
- tbodyaccelerometerjerkmeanz
- tbodyaccelerometerjerkstdx
- tbodyaccelerometerjerkstdy
- tbodyaccelerometerjerkstdz
- tbodygyroscopemeanx
- tbodygyroscopemeany
- tbodygyroscopemeanz
- tbodygyroscopestdx
- tbodygyroscopestdy
- tbodygyroscopestdz
- tbodygyroscopejerkmeanx
- tbodygyroscopejerkmeany
- tbodygyroscopejerkmeanz
- tbodygyroscopejerkstdx
- tbodygyroscopejerkstdy
- tbodygyroscopejerkstdz
- tbodyaccelerometermagmean
- tbodyaccelerometermagstd
- tgravityaccelerometermagmean
- tgravityaccelerometermagstd
- tbodyaccelerometerjerkmagmean
- tbodyaccelerometerjerkmagstd
- tbodygyroscopemagmean
- tbodygyroscopemagstd
- tbodygyroscopejerkmagmean
- tbodygyroscopejerkmagstd
- fbodyaccelerometermeanx
- fbodyaccelerometermeany
- fbodyaccelerometermeanz
- fbodyaccelerometerstdx
- fbodyaccelerometerstdy
- fbodyaccelerometerstdz
- fbodyaccelerometerjerkmeanx
- fbodyaccelerometerjerkmeany
- fbodyaccelerometerjerkmeanz
- fbodyaccelerometerjerkstdx
- fbodyaccelerometerjerkstdy
- fbodyaccelerometerjerkstdz
- fbodygyroscopemeanx
- fbodygyroscopemeany
- fbodygyroscopemeanz
- fbodygyroscopestdx
- fbodygyroscopestdy
- fbodygyroscopestdz
- fbodyaccelerometermagmean
- fbodyaccelerometermagstd
- fbodybodyaccelerometerjerkmagmean
- fbodybodyaccelerometerjerkmagstd
- fbodybodygyroscopemagmean
- fbodybodygyroscopemagstd
- fbodybodygyroscopejerkmagmean
- fbodybodygyroscopejerkmagstd

## Process ##

1. Download, unzip, and save required files to the current working directory.

	The following files are required:
	- features
	- activity_labels
	- subject_test
	- x_test
	- y_test
	- subject_train
	- x_train
	- y_train

2. Run the run_analysis.R script found in this repo.

3. A tidy data file (tidydata.txt) will be saved to your working directory.
