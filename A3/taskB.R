setwd("D:/MONASH-y2-s2/assignment/3")
mydata=read.csv("the-wall-street-journal.csv")
head(mydata)
mydata2 <- subset(mydata,mydata$comments_count<4000)
nrow(mydata)
nrow(mydata3)

library("ggplot2")
boxplot(mydata2$comments_count~mydata2$post_type, data=myd?ta2,
        xlab="post type",ylab="number of comments",
        main ="the distribution of comments made against each type of post")

mydata3 <- subset(mydata,mydata$comments_count<=1000)
boxplot(mydata3$comments_count~mydata3$post_type, data=mydata3,
   ?    xlab="post type",ylab="number of comments",
        main ="the distribution of comments made against each type of post")

library(dplyr)
aggregate(mydata3$comments_count~mydata3$post_type,mydata,median)


