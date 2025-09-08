#Importing the dataset
PlantGrowth <- PlantGrowth

# importing the dplyr library
install.packages('dplyr')
library(dplyr)
# computing the group mean, sd, and se
# pipe operator = %>%
stats <- PlantGrowth %>%
  group_by(group) %>%
  summarise(
    mean = mean(weight),
    sd = sd(weight),
    se = sd(weight)/sqrt(n())
  )
print(stats)

# Creating group wise boxplot
boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "pink"
)

# Visualizing the data using boxplots
#install.packages("ggpubr")
install.packages("ggplot2")
library(ggpubr)
ggline(PlantGrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter")
       )

# Running the ANOVA test
anova <- aov(weight ~ group, data = PlantGrowth)
summary(anova)

# Short interpretation
# p value = 0.0159 < 0.05/ null hypothesis rejected, significant defference