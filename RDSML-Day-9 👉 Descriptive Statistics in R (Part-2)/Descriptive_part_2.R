# Descriptive statistics using the psych package

# install.packages("psych")/ giving funtion
library(psych)

data()
AirPassengers
BOD 

# Using the New York airport flight data/ providing dataset thats why attach
# install.packages('nycflights13')
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

# Creating sub data set/ column bind
demo = cbind(arr_delay, dep_delay, distance)
demo
describe(demo)

# Introducing the colnames function/ to more describe the column names
colnames(demo) = c('Arrival delay', 'Departure Delay', 'Distance Travelled')
describe(demo)

# Introducing the hist() function
dep_delay
hist(dep_delay)

# How to group descriptive statistics
head(nycflights13::flights)
summary(carrier)
carrierFact = factor(carrier)
summary(carrierFact)

describeBy(distance, group = carrier)

# Two levels of aggregation
aggregate(distance, by = list(carrier, month), FUN = mean, na.rn =TRUE)
aggregate(distance, by = list(carrier, month), FUN = sd, na.rn = TRUE)
