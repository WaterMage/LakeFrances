#### Lake Frances - Total Phosphorus Significant Difference Between Depths

#Setting UP Working Directory
getwd()

# Grabbing AL data file
mets=read.csv("data/LF_MET_ONLY.csv")
names(mets)

# Selecting data subsets for significance comparison for AL 10 VS AL 20
x10<-mets$AL10
X20<-mets$AL20
y20<-mets$AL20
y30<-mets$AL30

str(mets)
class(x10)
class(y20)
class(y30)

head(x10, 10)
head (y20, 10)
head (y30, 10)



# Wilcoxon Signed Rank test - provides T value, p value, confidence interval, etc.)
wilcox.test(x=x10, y=y20, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)




# Wilcoxon Signed Rank test. NA portion omits the rows where there is NA in either. This is valide for 30 cm bgs because no samples were taken from that depth at LF3 - LF10. 
wilcox.test(x=x10, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)




# Wilcoxon Signed Rank test
wilcox.test(x=x20, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)
