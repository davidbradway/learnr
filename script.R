# Basic Tutorial - R Studio
# http://web.cs.ucla.edu/~gulzar/rstudio/basic-tutorial.html

setwd("/getlab/dpb6/repos/learnr")

# 1. Importing Data in R Studio

acs <- read.csv(url("http://stat511.cwick.co.nz/homeworks/acs_or.csv"))

# 2. Transforming Data

acs$age_husband
acs[1,3]
a <- subset(acs, age_husband > age_wife)
a
summary(acs)

# 4. Plotting Data

plot(x = acs$age_husband, y = acs$age_wife, type = 'p')

hist(acs$number_children)

counts <- table(acs$bedrooms)

barplot(counts, main="Bedrooms Distribution",  xlab="Number of Bedrooms")
