# Importing the dataset
dataset <- read.csv("polynom_data.csv")
attach(dataset)

# plot the dta
plot(x, y, main = "pollynomial Regression Example", pch = 19)

# Fit a quardratic (degree 2) polynomial regression
polynom_model <- lm(y ~ poly(x,2, raw = TRUE))
summary(polynom_model)



Building a correlation plot
Fitting the model
Checking the summary of the model
Creating new data for prediction
Predicting the new results
Adding a fit curve to the model
Saving the file
Updating the GitHub repository
