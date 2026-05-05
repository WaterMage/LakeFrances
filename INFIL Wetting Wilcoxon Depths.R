#Setting UP Working Directory
getwd()

# Grabbing Infiltration data file
INFIL=read.csv("data/LF_INFIL_Wetting.csv")
names(INFIL)

# Selecting data subsets for significance comparison for INFILTRATION BETWEEN MARCH AND NOVEMBER 2025
MAR<-INFIL$March_2025
NOV<-INFIL$November_2025

str(INFIL)
class(MAR)
class(NOV)

head(MAR, 10)
head (NOV, 10)



# Wilcoxon Signed Rank test - provides T value, p value, confidence interval, etc.)
wilcox.test(x=MAR, y=NOV, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)


