#### Lake Frances - Water Extractable Phosphorus Significant Difference Between Depths

#Setting UP Working Directory
getwd()

# Grabbing WEP data file
WEP=read.csv("data/LF_WEP_ONLY.csv")
names(WEP)

# Selecting data subsets for significance comparison for WEP 10 VS WEP 20
x10<-WEP$WEP_10
y20<-WEP$WEP_20

str(WEP)
class(x10)
class(y20)

head(x10, 10)
head (y20, 10)



# Wilcoxon Signed Rank test - provides T value, p value, confidence interval, etc.)
wilcox.test(x=x10, y=y20, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)



# Selecting data subsets for significance comparison for WEP 10 VS WEP 30
x10<-WEP$WEP_10
y30<-WEP$WEP_30

str(WEP)
class(x10)
class(y30)

head(x10, 10)
head (y30, 10)

# Wilcoxon Signed Rank test. NA portion omits the rows where there is NA in either. This is valide for 30 cm bgs because no samples were taken from that depth at LF3 - LF10. 
wilcox.test(x=x10, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)




# Selecting data subsets for significance comparison for WEP 20 VS WEP 30
x20<-WEP$WEP_20
y30<-WEP$WEP_30

str(WEP)
class(x20)
class(y30)

head(x20, 10)
head (y30, 10)

# Wilcoxon Signed Rank test
wilcox.test(x=x20, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)
