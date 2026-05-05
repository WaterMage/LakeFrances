#### Lake Frances - Soil Moisture Content Significant Difference Between Depths

#Setting UP Working Directory
getwd()

# Grabbing SMC data file
smc=read.csv("data/LF_SMC_ONLY.csv")
names(smc)

# Selecting data subsets for significance comparison for SMC 10 VS SMC 20
x10<-smc$SMC10
y20<-smc$SMC20

str(smc)
class(x10)
class(y20)

head(x10, 10)
head (y20, 10)



# Wilcoxon Signed Rank test - provides T value, p value, confidence interval, etc.)
wilcox.test(x=x10, y=y20, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95)



# Selecting data subsets for significance comparison for SMC 10 VS SMC 30
x10<-smc$SMC10
y30<-smc$SMC30

str(smc)
class(x10)
class(y30)

head(x10, 10)
head (y30, 10)

# Wilcoxon Signed Rank test. NA portion omits the rows where there is NA in either. This is valide for 30 cm bgs because no samples were taken from that depth at LF3 - LF10. 
wilcox.test(x=x10, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)




# Selecting data subsets for significance comparison for SMC 20 VS SMC 30
x20<-smc$SMC20
y30<-smc$SMC30

str(smc)
class(x20)
class(y30)

head(x20, 10)
head (y30, 10)

# Wilcoxon Signed Rank test
wilcox.test(x=x20, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)
