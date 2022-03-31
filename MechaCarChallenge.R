library(dplyr)

# DELIVERABLE 1
# read in file as a dataframe
mecha_mpg <- read_csv("MechaCar_mpg.csv")

# perform multiple linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg) #generate model
summary(mpg_lm) #generate summary statistics


# DELIVERABLE 2
# read in file as a dataframe
suspension_coil <- read_csv("Suspension_Coil.csv")

# create summary dataframe of PSI column
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create summary dataframe of PSI column for each lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>%
               summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

