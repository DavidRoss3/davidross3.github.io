


library(readxl)
library(ggplot2)
library(dplyr)

DF <- read_excel("TMP.xlsx",sheet = 1,range=NULL,col_names = TRUE,col_types=NULL,skip=0)
head(DF)
DF$Age_Cohort <- gsub(42898,"6-12",DF$Age_Cohort)
DF$Age_Cohort <- gsub("0 - 5","0-5",DF$Age_Cohort)
table(DF$Ethnicity)

males <- subset(DF,DF$gender=Male)
qA <- mean(males$Expenditures)

hispanics <- subset(DF,DF$Ethnicity="Hispanic")
qB <- mean(hispanics$Expenditures)

adults <- subset(DF,DF$Age_Cohort="22-50")
qC <- mean(adults$Expenditures)

WNHmales <- subset(males,males$Ethnicity="White not Hispanic")
qD <- mean(WNHmales$Expenditures)

AsianAdults <- subset(adults,adults$Ethnicity="Asian")
qE <- mean(AsianAdults$Expenditures)

