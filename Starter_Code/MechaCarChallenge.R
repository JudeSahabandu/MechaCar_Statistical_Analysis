# Importing dplyr Package
library(dplyr)

# Import MechaCar_mpg.csv file as a dataframe
MechaCar_MPG <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Performing Linear Regression using lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_MPG)

# Obtaining p-value and r2-value using summary() function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_MPG))

# Import Suspension_Coil.csv file as a dataframe
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Create total_summary dataframe using summary() function
Total_Summary <- Suspension_Coil %>% summarize(PSI_mean = mean(PSI), PSI_median = median(PSI), PSI_variance = var(PSI), PSI_sd = sd(PSI))

# Create lot_summary dataframe using summary() and group_by() function
Lot_Summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(PSI_mean = mean(PSI), PSI_median = median(PSI), PSI_variance = var(PSI), PSI_sd = sd(PSI))

# Determine if PSI across all lots is different from the population mean of 1,500 PSI.
sample_1 <- Suspension_Coil %>% sample_n(60)

t.test(sample_1$PSI, Suspension_Coil$PSI)


# Determine if PSI across each lot is different from the population mean of 1,500 PSI.
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)



