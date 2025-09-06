# paired sample t test in R
# Importing the dataset
myDataset<- read.csv("paired_sample_t_test.csv")

# Calculating the difference
diffs <- myDataset$carb - myDataset$carb_protein

# Checking if the differences are normally distributed/ > 0.05 = data normally distributed
shapiro.test(diffs)

# Checking for outliers using boxplot
boxplot(diffs)

# Running the Paired t-Test
t.test(x= myDataset$carb, 
       y= myDataset$carb_protein, 
       paired = TRUE)

# Running the Wilcoxon signed-rank Test/ p value 0.000 =< 0.05 then
wilcox.test(x= myDataset$carb, 
            y= myDataset$carb_protein, 
            paired = TRUE)

# calculatimng mean and sd
mean(myDataset$carb)
sd(myDataset$carb)

mean(myDataset$carb_protein)
sd(myDataset$carb_protein)

# Effect size calculation using Cohen's d (paired samples)
# 0.2 
install.packages('effsize')
library(effsize)
cohen.d (myDataset$carb_protein,myDataset$carb, paired = T)

# A paired-sample t-test was used to determine whether there was a 
# statistically significant mean difference between the distance ran
# when participants imbibed a carbohydrate-protein drink compared to 
# a carbohydrate-only drink. No outliers were ditected. The assumption
# of normality was not violated, as assesed by Shipro-wilk's test
# (p = 0.780). Participants ran further when imbiding the carbohydrate-
# protein drink (Mean = 11.302 km, sd = 0.713) KM as opposed to the 
# carbohydrate only drink (Mean = 11.167 KM, SD = .726 KM)
# Statistically significant mean increase of 0.135 KM, 
# 95% CI[0.091, 0.181], t(19) = 6.352, p< = .001,Cohen's d estimate: 0.186634 

(Remove the # sign in use)


# Result interpretation and reporting
