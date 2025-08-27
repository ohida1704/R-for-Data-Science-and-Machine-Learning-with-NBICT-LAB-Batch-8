# Two Sample T test/ Independednt sample T test
# Importing the dataset
dataset <- read.csv('scores.csv')

# checking for the normal distribution
shapiro.test(dataset$Male)
shapiro.test(dataset$Female) / in normal distribution

# Checking for the homogeneity distribution
var.test (x = dataset$Male, y = dataset$Female)

# Running the independent sample T test
t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)
