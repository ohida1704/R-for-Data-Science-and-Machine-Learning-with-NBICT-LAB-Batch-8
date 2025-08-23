#Importing the dataset
myData <- read.csv("bottle_data.csv")
# Checking for the normality
# Shapiro-wilk test
shapiro.test(myData$value)

# One sample T test
t.test(x = myData$value, mu = 150)