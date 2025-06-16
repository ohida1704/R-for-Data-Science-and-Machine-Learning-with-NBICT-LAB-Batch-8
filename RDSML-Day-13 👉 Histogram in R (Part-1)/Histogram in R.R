# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)

# Basic histogram using ggplot2
ggplot(dataset, aes(x = weight)) +
  geom_histogram()

# Changing the width of bins
ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = "black", fill = "lightblue")

# Changing colors
ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = "black", fill = "lightblue")

# Adding mean line
myPlot = ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "black", fill = "white")

myPlot + geom_vline(aes(xintercept = mean(weight)),
                    color = "blue", linetype = "dashed", size = 1)

# Histogram with density plot/ bimodal histogram/ Types of histogram
ggplot(dataset, aes(x = weight)) +
  geom_histogram(aes(y = after_stat(density)), color = "black", fill = "white") + 
  geom_density(fill = "blue", alpha = .3)

# Changing line color and fill color
ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "darkblue", fill = "lightblue") 

p
 








