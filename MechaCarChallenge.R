library(dplyr)

# read in file as dataframe
mecha_mpg <- read_csv("MechaCar_mpg.csv")

# perform multiple linear regression
mpg_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg) #generate model
summary(mpg_lm) #generate summary statistics