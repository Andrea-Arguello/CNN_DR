rd <- read.csv("./csvs/train.csv")
rd_tags <- read.csv("./csvs/diagnosis.csv")

rd_merge <- merge(rd,rd_tags)
library(ggplot2)

ggplot(rd_merge, aes(x=diagnosis_n,fill=diagnosis_n)) + geom_histogram(stat="count") + ylab(element_blank()) + xlab("Diagnosis") + ggtitle("Histogram of diagnosis in train dataset") + theme(legend.position = "none")

rd_test <- read.csv("./csvs/test.csv")
rd_test_m <- merge(rd_test, rd_tags)

prop.table(table(rd_merge$diagnosis_n))
