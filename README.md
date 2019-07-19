Coursera : Getting and Cleaning Data, week 4 peer graded assignment.


The data for the project is downloaded from below weblink.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Based on instruction given on the course the program is created. The Instruction is given below.

You should create one R script called run_analysis.R that does the following.
    
Run_analysis.R
    1. Merges the training and the test sets to create one data set. Use command rbind to combine training and test set
    
    Binds these files,
        UCI HAR Dataset/train/subject_train.txt
        UCI HAR Dataset/train/X_train.txt
        UCI HAR Dataset/train/y_train.txt

    from the train set by columns to a table that contains, the human subject, the activity performed and the values of the features.

    Binds these files,
        UCI HAR Dataset/test/subject_test.txt
        UCI HAR Dataset/test/X_test.txt
        UCI HAR Dataset/test/y_test.txt

    from the test set by columns to a table that contains, the human subject, the activity performed and the values of the features.

    Binds the data frames created for test and train set into one large dataset by rows.

    2. Extracts only the measurements on the mean and standard deviation for each measurement. Use grep command to get column indexes for variable name contains "mean()" or "std()"
    
    Finds the target features, which are the features with measurements about mean and standard deviation, and extracts them as well as those that indicate the 'subject' and 'activity' and creates a new data table only with the target variables.
        
    3. Uses descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor
    
    Replace the variable about activity, that contains integers from 1 to 6, with a factor based on levels and labels contained in the 'activity_labels' data file.

    4. Appropriately labels the data set with descriptive variable names. Give the selected descriptive names to variable columns
    
    I. Extracts the target variable names from 'features.txt'.
    II. Corrects a typo that exists in some feature names, that is to replace 'BodyBody' that appears in the names of some features with just 'Body'.
    III. Creates a new tidy dataset with the appropriate labels for the variable names.
    
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Use pipeline command to create a new tidy dataset with command group_by and summarize_each in dplyr package
    
    I.Group the tidy data table created in step 4, by 'subject' and 'activity'.
    II.Summarize each variable to find the average for the grouped values.
    III.Ungroup the data table.
    IV.Add descriptive names to the variables of the new tidy data table, by adding the prefix 'Avrg-' in the names of the target feature averages.
    V.Write the data in a text file in the present working directory, by the command:

    Codebook.md

    Table of Contents
    Informations on 'tidy_data_summary' data table
        Identificators and averages of features
        Description for the variables of 'tidy_data_summary'
        How to load 'tidy_data_summary' in R
        About 'tidy_data_summary' table
    The process by which the 'tidy_data_summary' table was produced
    Description of the features on which the averages were based
        Informations on how the features were produced from the raw data
        Informations on the collection of raw data
        About the original data set
    License
    
    tidydataset.txt
    The final tidy dataset file created using Run_analysis.R
    
    getting_project_data.R
    file for downloading and extracting project data into R.

