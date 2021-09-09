library(dplyr)
Mechcar_car <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

linear_analysis1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = Mechcar_car)
linear_analysis1
summary(linear_analysis1)

