###############################################################################
##
##  Getting and Cleaning Data Course Project
##
###############################################################################


##### Load Activty Labels and add column headers
actlabel <- read.table("activity_labels.txt", header = FALSE, col.names = c("activityid", "activitytype"))

##### Load Features, fix variable names, and assign names to colhdr to be used later.
featurelist <- read.table("features.txt", header = FALSE, col.names = c("featureid", "feature"))
featurelist <- within(featurelist, featurelabel <- gsub("gyro", "gyroscope", gsub("acc", "accelerometer",tolower(gsub(" ", "", chartr("-(),", "    ", featurelist$feature))))) )
colhdr <- as.vector(featurelist$featurelabel)

################################################################
##### The steps below are for the test data ####################
################################################################

##### Load X_test.  Use colhdr to set column names from features.
xtest <- read.table("x_test.txt", header = FALSE, col.names = colhdr)

##### Load subject_test and add column heder
stest <- read.table("subject_test.txt", header = FALSE, col.names = c("subjectID"))

##### Load y_test and add column header.
ytest <- read.table("y_test.txt", header = FALSE, col.names = c("activityid"))

##### bind xtest with activity and subject
xtest <- cbind(stest,cbind(ytest, xtest))

##### set columns to keep.  Subject & Activity headers and columns with mean and std.  exclude meanFreq columns
collist <- colnames(xtest)
keepcol <- as.numeric(which((grepl("subject", collist)|grepl("activity", collist)|grepl("mean", collist)|grepl("std", collist)) & !grepl("meanfreq", collist) & !grepl("angle", collist)) )

################################################################
##### The steps below are for the test data ####################
################################################################

##### Load X_train.  Use colhdr to set column names from features.
xtrn <- read.table("x_train.txt", header = FALSE, col.names = colhdr)

##### Load subject_train and add column heder
strn <- read.table("subject_train.txt", header = FALSE, col.names = c("subjectID"))

##### Load y_train and add column header.
ytrn <- read.table("y_train.txt", header = FALSE, col.names = c("activityid"))

##### bind xtrn with activity and subject
xtrn <- cbind(strn,cbind(ytrn, xtrn))

####################################################################
##### Combines Test & Training. Cleans and Output file #############
####################################################################

##### Bind test and training data
testtrn <- rbind(xtest,xtrn)

##### Remove unwanted columns
tidyx <- testtrn[,keepcol]

##### create tidy table with avg of remaining columns
fileout <- aggregate(tidyx[, 4:68], list(tidyx$subjectID,tidyx$activityid), mean, na.action = na.pass, na.rm = TRUE)

##### Fix activity labels and column headers before writing file
setnames(fileout, old = c('Group.1','Group.2'), new = c('subject','activityid'))

fileout <- merge(x = fileout, y = actlabel, by = "activityid", all.x = TRUE)
lastcol <- ncol(fileout)
newlast <- lastcol - 1
fileout <- fileout[c(lastcol,2:newlast)]

##### write final text file for assignment
write.table(fileout, file = "tidydata.csv", append = FALSE, sep = ",", row.names = FALSE)
