getwd()
#Reading the data into R
lfran<-read.csv("LF_Master_01212026.csv")

#Determining the column titles in order to parse the data
head(lfran)
class(lfran)
names(lfran)
summary(lfran)
area1=with(lfran,lfran[AREA==1,])
area2=with(lfran,lfran[AREA==2,])
area3=with(lfran,lfran[AREA==3,])
area4=with(lfran,lfran[AREA==4,])
depth10=with(lfran,lfran[DEPTH==10,])
depth20=with(lfran,lfran[DEPTH==20,])
depth30=with(lfran,lfran[DEPTH==30,])
summary(area1)
summary(area2)
summary(area3)
summary(area4)
summary(depth10)
summary(depth20)
summary(depth30)

library(dplyr)
library(ggplot2)
svw<-lfran
ggplot(svw,aes(x=SMC, y=WEP)) + geom_point() + ggtitle("Soil Moisture Content vs. Water Extractable P")

with(lfran,plot(SMC~WEP))
with(lfran,plot(WEP~SMC))
areacol=with(lfran,ifelse(AREA=="1","Blue",
                        ifelse(AREA=="2","Red",
                               ifelse(AREA=="3","Green","Orange"))))
depcol=with(lfran,ifelse(DEPTH=="10","Black",
                       ifelse(DEPTH=="20","Red","Green")))
head(areacol)
plot(WEP~SMC,data=lfran,col=depcol)
coplot(WEP~SMC|AREA,data=lfran,col=depcol)
coplot(WEP~SMC|DEPTH,data=lfran,col=areacol)
coplot(AREA~WEP|DEPTH,data=lfran,col=depcol)
coplot(WEP~AREA|DEPTH,data=lfran,col=depcol)
coplot(WEP~DEPTH|AREA,data=lfran,col=areacol)
coplot(SMC~AREA|DEPTH,data=lfran,col=depcol)

library(ggplot2)
b=ggplot(lfran,aes(x=AREA,y=WEP))
b1 = b + geom_boxplot(aes(fill=DEPTH_A)) +
  theme(axis.text.x=element_text(angle=0,vjust=0.8)) +
  labs(title= "Water-Extractable Phosphorus",
       subtitle= "By Area",
       x="Area",
       y="WEP (mg/kg)")
b1


with(lfran,
     plot(WEP~SMC,
          data=lfran,
          main="Water Extractable P vs. Soil Moisture Content",
          bg="Blue",
          pch=21,
          ylim=c(0,8),
          xlim=c(0,45),
          cex=1.2))

library(s20x)
trendscatter(WEP~SMC,f=0.6,data=lfran)
trendscatter(WEP~SMC,f=1.0,data=lfran)
with(lfran,trendscatter(WEP~SMC,f=0.05,data=lfran))

ylm=with(lfran, lm(WEP~SMC))
with(lfran,
     plot(WEP~SMC,
          data=lfran,
          main="Water Extractable P vs. Soil Moisture Content",
          bg="Blue",
          pch=21,
          ylim=c(0,8),
          xlim=c(0,45),
          cex=1.2))

abline(ylm,col="Gray")
