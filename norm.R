# git@github.com:davidbradway/learnr.git

# http://www.sthda.com/english/wiki/normality-test-in-r
# In Console do:
# install.packages("dplyr")
# install.packages("ggpubr")
# install.packages("car")

library("dplyr")
library("ggpubr")
library("car")

# Or, if .csv file, use this
#my_data <- read.csv(file.choose())

# Store the data in the variable my_data
my_data <- ToothGrowth

set.seed(1234)
dplyr::sample_n(my_data, 10)

ggdensity(my_data$len,
          main = "Density plot of tooth length",
          xlab = "Tooth length")

ggqqplot(my_data$len)

qqPlot(my_data$len)

shapiro.test(my_data$len)

