# Getting and Cleaning Data course project

##There are 4 files in this repository:
======================================

*README.md explains the main contents of the project;

*Codebook.md explains all the variables and the computing procedure;

*run_analysis.R is the R script for the project;

*tidy.tet is the final tidy dataset;



##The Purpure of this project
======================================
We will use the Human Activity Recognition Using Smartphones Dataset to generate our own tidy data. The information of this dataset can be found  here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The dataset are devide to 2 part: training set and testing set. We will merge these two parts together, and subset the mean and standiviation variables (see codebook.md for details) for each record. These variables and the the activitiy labels will be given proper names. Finally, we will generate our tidy data which show the means of each variables for every subject (the volunteers) and activity (see codebook.md for details).


##The reference of the dataset
======================================
Human Activity Recognition Using Smartphones Dataset

Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

