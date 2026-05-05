getwd()
#Reading the data into R
lfran<-read.csv("LF_Master_01212026.csv")
head(lfran) 


#Variables in the data frame
names(lfran)


#Only looking at correlations between data from 0-10cmbgs
lfran10<-read.csv("LF_Soil_10_data.csv")
names(lfran10)
mydat10<-select(lfran10,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot)

#Let's see if there are any statistical relationships within the 0-10 dataset. 
library(s20x)
pairs20x(mydat10)

cor(mydat10,y=NULL, use = "na.or.complete", method = c("spearman"))



#Only looking at correlations between data from 10-20cmbgs
lfran20<-read.csv("LF_Soil_20_data.csv")
names(lfran20)
mydat20<-select(lfran20,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot)

#Let's see if there are any statistical relationships within the 0-10 dataset. 
library(s20x)
pairs20x(mydat20)

cor(mydat20,y=NULL, use = "na.or.complete", method = c("spearman"))


#Only looking at data from 20-30cmbgs
lfran30<-read.csv("LF_Soil_30_data.csv")
names(lfran30)
mydat30<-select(lfran30,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot)

#Let's see if there are any statistical relationships within the 0-10 dataset. 
library(s20x)
pairs20x(mydat30)

cor(mydat30,y=NULL, use = "na.or.complete", method = c("spearman"))




#Now looking at all depth data combined

lfrannum<-read.csv("NumsOnly_LF_Master_01212026.csv")
names(lfrannum)
mydat1<-select(lfrannum, ELEV, SAND_P, CLAY_P, SILT_P, SMC, LOI, WEP, MM3, M3, TP, AL, AS, FE, CA, MG, SI)

#Let's see if there are any statistical relationships within the dataset. 
library(s20x)
pairs20x(mydat1)

cor(mydat1,y=NULL, use = "na.or.complete", method = c("spearman"))


#Turning data output into tables
dat10tab<-cor(mydat10,y=NULL, use = "na.or.complete", method = c("spearman"))
print(dat10tab)
write.csv(dat10tab,"LF_Soil_10_Correlations.csv",row.names = TRUE)

dat20tab<-cor(mydat20,y=NULL, use = "na.or.complete", method = c("spearman"))
write.csv(dat20tab,"LF_Soil_20_Correlations.csv",row.names=TRUE)

dat30tab<-cor(mydat30,y=NULL, use = "na.or.complete", method = c("spearman"))
write.csv(dat30tab,"LF_Soil_30_Correlations.csv", row.names=TRUE)

datalltab<-cor(mydat1,y=NULL, use = "na.or.complete", method = c("spearman"))
write.csv(datalltab,"LF_Soil_All_Correlations.csv", row.names=TRUE)