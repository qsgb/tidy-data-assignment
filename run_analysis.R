##1) merge train and test

  #read train data 
train.table<-read.table(".\\UCI HAR Dataset\\train\\X_train.txt",sep="")
train.subject<-read.table(".\\UCI HAR Dataset\\train\\subject_train.txt",sep="")
train.lables<-read.table(".\\UCI HAR Dataset\\train\\y_train.txt",sep="")
  #add subject and lables
train.data<-cbind(train.table,train.subject,train.lables)
  
  #read test data
test.table<-read.table(".\\UCI HAR Dataset\\test\\X_test.txt",sep="")
test.subject<-read.table(".\\UCI HAR Dataset\\test\\subject_test.txt",sep="")
test.lables<-read.table(".\\UCI HAR Dataset\\test\\y_test.txt",sep="")
  #add subject and lables
test.data<-cbind(test.table,test.subject,test.lables)

  #merge data
merge<-rbind(train.data,test.data)

##2) extract mean and std
 
  #read all features
features<-read.table(".\\UCI HAR Dataset\\features.txt",sep="",stringsAsFactors = FALSE)
  #find the variable with mean and std and combine with the sujects and labels
index<-c(grep("mean\\(\\)|std\\(\\)",features[,2]),562,563)
  #subset these variables
subset<-merge[,index]

##3)name activity

 #read activity names and name as factors name for labels
activity<-read.table(".\\UCI HAR Dataset\\activity_labels.txt",sep="",stringsAsFactors = FALSE)
subset[,ncol(subset)]<-factor(subset[,ncol(subset)],labels=activity[,2])

##4)name variable

  #find the names with mean and std and name the variables
names(subset)<-c(grep("mean\\(\\)|std\\(\\)",features[,2],value=TRUE),"subject","activity")

##5) tidy data

library(dplyr)
  ##group by subject and activity then summarise the mean of each variable
tidy<-subset %>% 
       group_by(subject,activity) %>%
       summarise_each(funs(mean),-c(subject,activity))
  ##creat text file
write.table(tidy,file="tidy.txt",row.names = FALSE,)
