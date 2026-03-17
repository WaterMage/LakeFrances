#### Lake Frances - Total Phosphorus Significant Difference Between Depths

#Setting UP Working Directory
getwd()

# Grabbing TP data file
TP=read.csv("data/LF_TP_ONLY.csv")
names(TP)

# Selecting data subsets for significance comparison for TP 10 VS TP 20
x10<-TP$TP_10
y20<-TP$TP_20

str(TP)
class(x10)
class(y20)

head(x10, 10)
head (y20, 10)



# Wilcoxon Signed Rank test - provides T value, p value, confidence interval, etc.)
wilcox.test(x=x10, y=y20, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)



# Selecting data subsets for significance comparison for TP 10 VS TP 30
x10<-TP$TP_10
y30<-TP$TP_30

str(TP)
class(x10)
class(y30)

head(x10, 10)
head (y30, 10)

# Wilcoxon Signed Rank test. NA portion omits the rows where there is NA in either. This is valide for 30 cm bgs because no samples were taken from that depth at LF3 - LF10. 
wilcox.test(x=x10, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)




# Selecting data subsets for significance comparison for TP 20 VS TP 30
x20<-TP$TP_20
y30<-TP$TP_30

str(TP)
class(x20)
class(y30)

head(x20, 10)
head (y30, 10)

# Wilcoxon Signed Rank test
wilcox.test(x=x20, y=y30, alternative = "two.sided", mu = 0, paired = TRUE, exact = TRUE,conf.int = TRUE, conf.level = 0.95, na.action = na.omit)
