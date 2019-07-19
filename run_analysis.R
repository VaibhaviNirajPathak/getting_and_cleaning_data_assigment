#load the library dplyr
library(dplyr)

#set working directory of the downloaded dataset
setwd("/home/Ruser3/Desktop/UCI HAR Dataset/")

#read in the training dataset
x_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
subject_train <- read.table("./train/subject_train.txt")

#read in the test dataset
x_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
subject_test <- read.table("./test/subject_test.txt")

# read data description
variable_names <- read.table("features.txt")

# read activity labels
activity_labels <- read.table("activity_labels.txt")

# Merging the training and the test sets to create merged data set.
X_merged <- rbind(x_train, x_test)
Y_merged <- rbind(y_train, y_test)
subject_merged <- rbind(subject_train, subject_test)

# subsetting measurements for mean and standard deviation 
selected_var <- variable_names[grep("mean\\(\\)|std\\(\\)",variable_names[,2]),]
X_merged <- X_merged[,selected_var[,1]]

# 3. Uses descriptive activity names to name the activities in the data set
colnames(Y_merged) <- "activity"
Y_merged$activitylabel <- factor(Y_merged$activity, labels = as.character(activity_labels[,2]))
activitylabel <- Y_merged[,-1]

#4. Appropriately labels the data set with descriptive variable names.
colnames(X_merged) <- variable_names[selected_var[,1],2]

# 5. From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.
colnames(subject_merged) <- "subject"
total <- cbind(X_merged, activitylabel, subject_merged)
total_mean <- total %>% group_by(activitylabel, subject) %>% summarize_each(funs(mean))
write.table(total_mean, file = "tidydata.txt", row.names = FALSE, col.names = TRUE)
