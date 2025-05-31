# Installing and loading ggplot2Add commentMore actions
#install.packages('ggplot2')
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +  
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +  
  geom_point(size = 4, shape = 18)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +  
  geom_point(size = 4, shape = 18) + 
  geom_smooth(method = lm)

# Removing the confidence interval
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE)

# Loess method
ggplot(dataset, aes(x= wt, y = mpg)) + 
  geom_point() + 
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) +  
  geom_point(size = 4, shape = 18) + 
  geom_smooth(method = lm, linetype = "dotted",
              color = "red")

# changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +  
  geom_point(size = 1, shape = 18, color = 'blue') + 
  geom_smooth(method = lm, linetype = "dotted",
              color = "darkred", fill = 'blue')

# scatter plot with multiple groups

# converting the cyl column from a new numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)
class(dataset$cyl)

# changing the poin the shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) + 
  geom_point()

# changing point shapes and colors
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) + 
  geom_point()

# changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) + 
  geom_point()
