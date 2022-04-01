library(dplyr)

# DELIVERABLE 1
# read in file as a dataframe
mecha_mpg <- read_csv("MechaCar_mpg.csv")

# perform multiple linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg) #generate model
summary(mpg_lm) #generate summary statistics


# DELIVERABLE 2
# read in file as a dataframe
suspension_data <- read_csv("Suspension_Coil.csv")

# create summary dataframe of PSI column
total_summary <- suspension_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# create summary dataframe of PSI column for each lot
lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>%
               summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')


# DELIVERABLE 3
# use t-test to identify any statistical PSI differences across all manufacturing lots
suspension_sample <- suspension_data %>% sample_n(50) #generate 50 randomly sampled data points
t.test(suspension_sample$PSI,mu = 1500) #compare sample versus population mean

# use t-test with subset to determine if the PSI for each manufacturing lot is statistically different
t.test(subset(suspension_data,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_data,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_data,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
