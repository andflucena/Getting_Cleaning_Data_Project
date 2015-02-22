# See the data: knowing a little bit about them
train.data <- read.table("train/X_train.txt")
head(train.data)
train.labels <- read.table("train/y_train.txt", col.names="label")
head(train.labels)
train.subjects <- read.table("train/subject_train.txt", col.names="subject")
head(train.subjects)
test.data <- read.table("test/X_test.txt")
head(test.data)
test.labels <- read.table("test/y_test.txt", col.names="label")
head(test.labels)
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
head(test.subjects)
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
head(features)
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
head(labels)
# Bind data
mydata <- rbind( cbind(test.data, test.labels, test.subjects), cbind(train.data, train.labels, train.subjects))
head(mydata)
# Extract the measurements on the mean and standard deviation 
features.mean.std <- features[grep("mean()|std()", features$V2), ]
mydata.mean.std <- mydata[, c(1, 2, features.mean.std$V1+2)]
head(mydata.mean.std)
# Create a list with the colunm names 
x <- c("subject", "label", features.mean.std$V2)
colnames(mydata.mean.std) <- x
head(x)
# See the mean 
aggr.mydata <- aggregate(mydata.mean.std[, ncol(mydata.mean.std)], by=list(subject = mydata.mean.std$subject, label = mydata.mean.std$label),
                       mean)
head(aggr.mydata)


