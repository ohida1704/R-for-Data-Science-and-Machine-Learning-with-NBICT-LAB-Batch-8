# Descriptive statistics using the psych package
 
install.packages("psych")/ giving funtion
library(psych)

data()
AirPassengers
BOD 
 
# Using the New York airport flight data/ providing dataset thats why attach
install.packages('nycflights13')
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
summary(distance)
describe(distance)

# Creating sub data set
demo = cbind(arr_delay, dep_delay, distance)
demo
describe(demo)

install.packages('fishmethods')
library(fishmethods)
attach(fishmethods::alkD)

