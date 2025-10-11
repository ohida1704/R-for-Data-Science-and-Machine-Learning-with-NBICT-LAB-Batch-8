# Simple Linear Regreesion

#Importing the dataset
dataset <- read.csv("Salary_Data.csv")

# Splitting the dataset into the Training set(larger part of data) and Test set(fewer data)
# install.packages("caTools")
library(caTools)
set.seed(123)
split <- sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set <- subset(dataset,split == TRUE)
test_set <- subset(dataset,split == FALSE)

# Fitting Simple Linear Regression to the Training set
regressor <- ln(formula = Salary ~ YearsExperince, 
                data = training_set)

Predicting the Test set results
Visualising the Training set results
Visualising the Test set results

