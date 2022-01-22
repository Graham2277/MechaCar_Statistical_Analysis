#Deliverable 1: Linear Regression 
library(dplyr)
library(tidyverse)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MechaCar_mpg)

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =MechaCar_mpg)) 

#Deliverable 2: Create Visualizations for the Trip Analysis
head(Suspension_Coil)

Mean = mean(Suspension_Coil$PSI)
Median=median(Suspension_Coil$PSI)
Variance=var(Suspension_Coil$PSI)
SD = sd(Suspension_Coil$PSI)

#Total_Summary Data Frame
total_Summary <- data.frame(Mean,Median,Variance,SD)

#summary by lot
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 
