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
regressor <- lm(formula = Salary ~ YearsExperience, 
                data = training_set)
# checking the summary of the model
summary(regressor)

# Predicting the Test set results
y_pred = predict(regressor, newdata = training_set)

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x=training_set$YearsExperience, y = training_set$Salary),
             colour="red") + 
  geom_line(aes(x=training_set$YearsExperience, y =y_pred = predict(regressor, newdata = test_set)),
             colour="blue") + 
  ggtitle("Salary vs Experience") +
  xlab("Years of experince") +
  ylab("Salary")

# Visualising the Test set results
library(ggplot2)
ggplot() + 
  geom_point(aes(x=test_set$YearsExperience, y=test_set$Salary),
             colour='red') +
  geom_line(aes(x=test_set$YearsExperience, y=predict(regressor, newdata = test_set)),
            colour='blue') +
  ggtitle("Salary vs Experience (Test Set)") +
  xlab('Years of experience') +
  ylab('Salary')
