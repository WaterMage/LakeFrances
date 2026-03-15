#### Developing P-Value Matrices for Lake Frances Variables
### P-values to be matched with r2 Coefficient of Determination will tell us how significant r2 is

# Getting working directory
getwd()

# Loading the data and setting up library

library(tidyverse)
data<-read.csv("data/LF_Master_03042026.csv")
names(data)


library(dplyr)
dat10<-read.csv("data/LF_Soil_10_data_030426.csv")
names(dat10)

# Keeping only the numeric columns - drops any ID or Label columns automatically
mydat10<- select(dat10,Elev, SandPD, ClayPD, SiltPD, SMC, LOI, WEP_2024, WEP_2025, M3P, TP, Al_tot, As_tot, Fe_tot, Ca_tot, Mg_tot, Na_tot, Si_tot, P_sorb, PSI)
names(mydat10)

# Creating empty matrices
vars10<- names(mydat10)
n10<- length(vars10)

r10_matrix<- matrix(NA,n10,n10, dimnames = list(vars10,vars10))
p10_matrix<- matrix(NA,n10,n10, dimnames = list(vars10, vars10))

# Filling the matrices
for (i in 1:n10) {
  for (j in 1:n10) {
    test10<- cor.test(mydat10[[i]], mydat10[[j]], use = "complete.obs", method = "spearman")
    r10_matrix[i, j] <- test10$estimate
    p10_matrix[i, j] <- test10$p.value
  }
}

# Quick normality check. If most P-values come back as less than 0.05 then we stick with Spearman
sapply(mydat10, shapiro.test) %>% sapply('[[', "p.value")

round(r10_matrix, 3)
round(p10_matrix, 4)


#Other quick checks:
# To check the number of rows of data that I have (dim), confirm the name titles of the associated columns (names), and give me the number of samples (n)
dim(mydat10)
names(mydat10)
n10
  
# Exporting the matrices
write.csv(round(r10_matrix, 3), "LF10correlation_matrix.csv")
write.csv(round(p10_matrix, 4), "LF10p_value_matrix.csv")
