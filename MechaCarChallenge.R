library(dplyr)

MPG_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_Table)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MPG_Table)) #create linear model


suspension_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_Table %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            Variance=var(PSI),
            SD = sd(PSI))

total_summary

lot_summary <- suspension_Table %>% group_by(Manufacturing_Lot) %>%
  summarize(mean = mean(PSI),
            median = median(PSI),
            Variance=var(PSI),
            SD = sd(PSI))

lot_summary

total_T_test <- t.test(suspension_Table$PSI)

total_T_test

suspens_lot1 <- suspension_Table$`PSI`[suspension_Table$Manufacturing_Lot=="Lot1"]
suspens_lot2 <- suspension_Table$`PSI`[suspension_Table$Manufacturing_Lot=="Lot2"]
suspens_lot3 <- suspension_Table$`PSI`[suspension_Table$Manufacturing_Lot=="Lot3"]

lot_T_test1 <- t.test(suspens_lot1, mu=1500)
lot_T_test2 <- t.test(suspens_lot2, mu=1500)
lot_T_test3 <- t.test(suspens_lot3, mu=1500)

lot_T_test1
lot_T_test2
lot_T_test3

  