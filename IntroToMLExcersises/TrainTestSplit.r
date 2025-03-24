#nolint start
library(dplyr)
library(ggplot2)
library(rsample)
library(caret)
library(h2o)
library(modeldata)
library(AmesHousing)
data("attrition", package = "modeldata")
h2o.no_progress()
h2o.init()
ames <- AmesHousing::make_ames()
ames.h20 <- as.h2o(ames)
#Here churn is used to change the data type of certain factors in the dataset, there is some data in the data set that is unordered, h2o cant deal with ordered data so it changes it to unordered
churn <- attrition %>% 
  mutate_if(is.ordered, .funs = factor, ordered = FALSE)
churn.h2o <- as.h2o(churn)

#Sampling is a random process, but just so you can reproduce things a bit easier seed is used to generate the same random numbers each time but, they dont actually follow these and are "actually" randomly generated
set.seed(123)
index1 <- sample(1:nrow(ames), round(nrow(ames) * 0.7))
train1 <- ames[index1,]
test1 <- ames[-index1,]

ggplot(index1, aes(train1, test1))
print("HHFJBSDJFBSDNFKJDS")
#nolintend

