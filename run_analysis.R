run_analysis <- function(directory) {
    #working directory - directory of uncompressed data archive
    setwd(directory)

    # read data to data frames
    subject_test <- read.table("./test/subject_test.txt")
    x_test <- read.table("./test/X_test.txt")
    y_test <- read.table("./test/y_test.txt")
    subject_train <- read.table("./train/subject_train.txt")
    x_train <- read.table("./train/X_train.txt")
    y_train <- read.table("./train/y_train.txt")
    features <- read.table("./features.txt")

    # merge test and train data
    x <- rbind(x_test, x_train)
    y <- rbind(y_test, y_train)
    subject <- rbind(subject_test, subject_train)

    # find required features
    # those that have std() or mean() in title
    extracted_features_std <- features[grep("std()", features$V2), ]
    extracted_features_mean <- features[grep("mean()", features$V2), ]
    extracted_features <- rbind(extracted_features_mean, extracted_features_std)

    # extract col_numbers from extracted features and convert to vector
    # use them to subset x  by columns
    features_cols = extracted_features[, 1]
    x_selected_cols <- x[, features_cols]

    # assign colnames
    colnames(x_selected_cols) <- extracted_features[,2]
    colnames(y) <- c("activity")

    # read activities and assign colnames to data.frame
    activities <- read.table("./activity_labels.txt")
    merged_y <- merge(x=activities, y=y, by.x="V1", by.y="activity")

    # add activities to data
    x_with_y <- cbind(x_selected_cols, merged_y[, 2])
    colnames(x_with_y)[ncol(x_with_y)] <- c("activity")

    # add subject to data
    colnames(subject) <- c("subject")
    x_with_y_and_subj <- cbind(subject, x_with_y)


    #calculate aggregates by grouping by subject and activity
    result <- aggregate(x_with_y_and_subj[, 1:ncol(x_with_y_and_subj) - 1], by=list(x_with_y_and_subj$subject, x_with_y_and_subj$activity), mean)
    #drop column with subject, it is duplicate
    trimmed_result <- result[, 2:ncol(x_with_y_and_subj)]
    #rename grouping column to activity
    colnames(trimmed_result)[1] <- c("activity")
    #write result to file in working directory
    write.table(trimmed_result, file="./result.txt", row.name=FALSE)
}
