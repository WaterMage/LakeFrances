#Reading the data into R
lfs10<- read.csv("LF_Soil_10_data.csv")
lfs20<- read.csv("LF_Soil_20_data.csv")
lfs30<- read.csv("LF_Soil_20_data.csv")

#Confirming data is in R
head(lfs10,1)
head(lfs20,1)
head(lfs30,1)


#Reading the data into R
lfran<-read.csv("LF_Master_01212026.csv")

#Determining the column titles in order to parse the data
head(lfran)

#Opening the tidyverse library for visualization
library(tidyverse)

#Beginning the data analysis.

#General Summary of all data variables
summary(lfran)


#Now determining the overall distribution of the grouped data
#Starting with determining if there is statistical variance within the data based on depth

dSMC<-lfran %>%
  select(DEPTH_A,SMC)
summary(dSMC)
library(ggplot2)
ggplot(dSMC) + 
  aes(x=DEPTH_A, y = SMC, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dLOI<-lfran %>%
  select(DEPTH_A,LOI)
summary(dLOI)
library(ggplot2)
ggplot(dLOI) + 
  aes(x=DEPTH_A, y = LOI, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dWEP<-lfran %>%
  select(DEPTH_A,WEP)
summary(dWEP)
library(ggplot2)
ggplot(dWEP) + 
  aes(x=DEPTH_A, y = WEP, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dM3<-lfran %>%
  select(DEPTH_A,M3)
summary(dM3)
library(ggplot2)
ggplot(dM3) + 
  aes(x=DEPTH_A, y = M3, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dSAND<-lfran %>%
  select(DEPTH_A,SAND_P)
summary(dSAND)
library(ggplot2)
ggplot(dSAND) + 
  aes(x=DEPTH_A, y = SAND_P, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dSILT<-lfran %>%
  select(DEPTH_A,SILT_P)
summary(dSILT)
library(ggplot2)
ggplot(dSILT) + 
  aes(x=DEPTH_A, y = SILT_P, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dCLAY<-lfran %>%
  select(DEPTH_A,CLAY_P)
summary(dCLAY)
library(ggplot2)
ggplot(dCLAY) + 
  aes(x=DEPTH_A, y = CLAY_P, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

dTP<-lfran %>%
  select(DEPTH_A,TP)
summary(dTP)
library(ggplot2)
ggplot(dTP) + 
  aes(x=DEPTH_A, y = TP, color=DEPTH_A) +
  geom_jitter() +
  theme(legend.position = "none")

#Now visualizing the data distribution based on Area
aSMC<-lfran %>%
  select(AREA,SMC)
summary(aSMC)
library(ggplot2)
ggplot(aSMC) + 
  aes(x=AREA, y = SMC, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aLOI<-lfran %>%
  select(AREA,LOI)
summary(aLOI)
library(ggplot2)
ggplot(aLOI) + 
  aes(x=AREA, y = LOI, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aWEP<-lfran %>%
  select(AREA,WEP)
summary(aWEP)
library(ggplot2)
ggplot(aWEP) + 
  aes(x=AREA, y = WEP, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aM3<-lfran %>%
  select(AREA,M3)
summary(aM3)
library(ggplot2)
ggplot(aM3) + 
  aes(x=AREA, y = M3, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aTP<-lfran %>%
  select(AREA,TP)
summary(aTP)
library(ggplot2)
ggplot(aTP) + 
  aes(x=AREA, y = TP, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aSAND<-lfran %>%
  select(AREA,SAND_P)
summary(aSAND)
library(ggplot2)
ggplot(aSAND) + 
  aes(x=AREA, y = SAND_P, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aSILT<-lfran %>%
  select(AREA,SILT_P)
summary(aSILT)
library(ggplot2)
ggplot(aSILT) + 
  aes(x=AREA, y = SILT_P, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

aCLAY<-lfran %>%
  select(AREA,CLAY_P)
summary(aCLAY)
library(ggplot2)
ggplot(aCLAY) + 
  aes(x=AREA, y = CLAY_P, color=AREA) +
  geom_jitter() +
  theme(legend.position = "none")

# Determining the number of observations for WEP, TP



