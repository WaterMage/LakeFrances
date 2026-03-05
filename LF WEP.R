head(lfran)
head(lfran, 1)
mean(lfran[lfran$DEPTH=="10", "WEP"])
mean(lfran[lfran$DEPTH=="20", "WEP"])
mean(lfran[lfran$DEPTH=="30", "WEP"])
names(lfran)
I=lfran$WEP
z=(I-mean(I))/sd(I)
class(z)
mean(z)
sd(z)
z[abs(z)>=2 & abs(z)<=3]
I[abs(z)>=2 & abs(z)<=3]
z[abs(z)>3]
I[abs(z)>3]
mycol=ifelse(abs(z)>3, "Red",
               ifelse(abs(z)>=2 & abs(z)<=3, "Blue", "Black"))
mypch=ifelse(abs(z)>3, 20, 
               ifelse(abs(z)>=2 & abs(z)<=3, 21, 22))
library(lattice)
dotplot(I,col=mycol, xlab="Water Extractable P",main="Lake Frances Water Extractable Phosphorus Dotplot")
boxplot(I,col="Orange", data=lfran$WEP)
length(I[abs(z)<2])/length(I)
length(I)
mean(I)
sd(I)