##Piece wise PSR for Lake Frances soils data
#Determining if there is a change point in PSR vs WEP. There is not, p-value = 0.08.

install.packages("segmented")

library(segmented)

df <- read.csv("data/LF_PSRchange.csv")

# Fit base linear model
lm_base <- lm(WEP ~ PSR, data = df)

# Fit segmented model with one breakpoint, starting guess near 0.075
seg_mod <- segmented(lm_base, seg.Z = ~PSR, psi = 0.1)

# Results
summary(seg_mod)
confint(seg_mod)       # CI on the breakpoint
davies.test(lm_base, ~PSR)  # Is the break statistically significant?
