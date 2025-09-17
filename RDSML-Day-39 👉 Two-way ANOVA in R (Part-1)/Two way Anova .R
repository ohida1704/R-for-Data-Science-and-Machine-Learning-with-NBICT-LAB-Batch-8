# installing Packages
#install.packages(c("tidyverse", "car", "emmeans", "effectsize", "performance", "broom", "kableExtra"))
library(tidyverse)

# Importing the dataset
d <- read.csv("cropdata.csv")

# Quick EDA (Exploratory Descriptive Analysis)
summs <- d %>% 
  group_by(fert, irr) %>%
  summarise(mean = mean(y), se = sd(y)/sqrt(n()), .group = "drop")

# Quick data summary visualization
library(ggplot2)
ggplot(summs, aes(irr, mean, group = fert))+
  geom_line() + 
  geom_point(size = 2) +
  geom_errorbar(aes(ymin=mean-se, ymax = mean+se), width = .2) +
  facet_wrap(~fert, nrow = 1)+
  labs(x = "Irrigation", y = "Mean yield",
       title= "Interaction of Fertilizer x Irrigation")+
  theme_classic(base_size = 12)


