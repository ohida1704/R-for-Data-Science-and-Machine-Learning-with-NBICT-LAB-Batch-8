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

# Tukey multiple pairwise-comparisons/ between treatment group mean
TukeyHSD(anova)

# Homogeneity of variances/ discard the outliers from the group
plot(anova, 1)
library(car)
leveneTest(weight ~ group, data = PlantGrowth)

# ANOVA test with no assumption of equal variances
oneway.test(weight ~ group, data = PlantGrowth)

# Pairwise t-tests with no assumption of equal variances/ If homogeneity maintain not done
pairwise.t.test(PlantGrowth$weight, PlantGrowth$group,
                p.adjust.method = 'BH', pool.sd = FALSE)

# Checking for Normal distribution)/ will get Q-Q plot
plot(anova, 2)

# Extracting the reduals/ group means - individual values
aov_res <- residuals(object = anova)

# Running Shapiro-wilk
shapiro.test(aov_res)

if the normality assumption not met? then this test
kruskal.test(weight ~ group, data = PlantGrowth)
pairwise.wilcox.test(PlantGrowth$weight, PlantGrowth$group,
                     p.adjust.method = "BH")

















