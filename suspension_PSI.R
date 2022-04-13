library(dplyr)

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
