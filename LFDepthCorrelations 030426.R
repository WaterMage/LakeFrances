### Lake Frances Correlation Matrix Development - March 2026(update)

## The Correlation Matrix Method

# Intro
#This document includes the information and coding that was used to create the correlation matrices for Lake Frances soils analytical data. The data includes all collected information for sample location LF 3 - LF 46. To date all parameters were analyzed for locations LF 3 - LF 43. No P or metals data have been collected for locations LF 44-46 at the time of this update (03/04/2026). 

#Working Directory and Setup
#Getting the working directory

getwd()



lfran<-read.csv("data/LF_Master_03042026.csv")
head(lfran) 




names(lfran)



# Soil Data Separation 
# Soil Depth Interval: 0-10 cm bgs



lfran10<-read.csv("data/LF_Soil_10_data_030426.csv")
names(lfran10)



library(dplyr)
mydat10<-select(lfran10,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot, P_sorb, PSI)



library(s20x)
pairs20x(mydat10)
cor(mydat10,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))



# Soil Depth Interval: 10-20 cmbgs

lfran20<-read.csv("data/LF_Soil_20_data_030426.csv")
names(lfran20)
mydat20<-select(lfran20,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot, P_sorb, PSI)



library(s20x)
pairs20x(mydat20)
cor(mydat20,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))


# Soil Depth Interval: 20-30 cmbgs

lfran30<-read.csv("data/LF_Soil_30_data_030426.csv")
names(lfran30)
mydat30<-select(lfran30,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot, P_sorb, PSI)


 
library(s20x)
pairs20x(mydat30)
cor(mydat30,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))



# All Depths combined: 0-30 cmbgs

lfrannum<-read.csv("data/NumsOnly_LF_Master_030426.csv")
names(lfrannum)
mydat1<-select(lfrannum,ELEV, SAND_P, CLAY_P, SILT_P, SMC, LOI, WEP, WEP100, M3, TP, FE, AL, MG, CA, MN, AS, NA., P_sorb, PSI)



library(s20x)
pairs20x(mydat1)
cor(mydat1,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))


# Table Exporting

dat10tab<-cor(mydat10,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))
print(dat10tab)
write.csv(dat10tab,"Output/LF_Soil_10_Cor030626.csv",row.names = TRUE)



#Soil Correlation Table: 10-20 cm bgs 

dat20tab<-cor(mydat20,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))
write.csv(dat20tab,"Output/LF_Soil_20_Cor030626.csv",row.names=TRUE)



#Soil Correlation Table: 20-30 cm bgs 

dat30tab<-cor(mydat30,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))
write.csv(dat30tab,"Output/LF_Soil_30_Cor030626.csv", row.names=TRUE)



#Soil Correlation Table: All Depths

datalltab<-cor(mydat1,y=NULL, use = "pairwise.complete.obs", method = c("spearman"))
write.csv(datalltab,"Output/LF_Soil_All_Cor030626.csv", row.names=TRUE)


