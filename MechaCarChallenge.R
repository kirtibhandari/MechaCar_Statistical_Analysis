#Analysis Part 1: Linear Regression to Predict MPG

library(dplyr)

MechaCar_df <- read.csv(file='E:/UofT/Analysis_Projects/Module-15/R_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_df))

#Analysis Part 2: Summary Statistics on Suspension Coils

Suspension_Coil_df <- read.csv(file='E:/UofT/Analysis_Projects/Module-15/R_Analysis/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil_df %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI))

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD=sd(PSI))

#Analysis Part 3: T-Test on Suspension Coils

t.test(Suspension_Coil_df$PSI, mu=1500)

t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot1" )$PSI, mu=1500)
t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot2" )$PSI, mu=1500)
t.test(subset(Suspension_Coil_df, Manufacturing_Lot == "Lot3" )$PSI, mu=1500)


