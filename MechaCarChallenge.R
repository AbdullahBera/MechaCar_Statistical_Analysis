
# Deliverable One 
library(dplyr)
Mechcar_car <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

linear_analysis1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mechcar_car)
linear_analysis1
summary(linear_analysis1)

# Deliverable Two 
Suspension_coils <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- Suspension_coils %>% summarize(Mean = mean(PSI), Median = median(PSI),
                                                Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- Suspension_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),
                                                                  Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# Deliverable Three
t.test(Suspension_coils$PSI, mu = 1500)

t.test(subset(Suspension_coils$PSI, Suspension_coils$Manufacturing_Lot == 'Lot1'), mu = 1500)
t.test(subset(Suspension_coils$PSI, Suspension_coils$Manufacturing_Lot == 'Lot2'), mu = 1500)
t.test(subset(Suspension_coils$PSI, Suspension_coils$Manufacturing_Lot == 'Lot3'), mu = 1500)