# MechaCar_Statistical_Analysis
### A statistical analysis to drive hypothetical automotive production decisions

## Linear Regression to Predict MPG
After running multiple linear regression in RStudio, it is clear that vehicle length and ground clearence are the variables that provided a non-random amount of variance to the mpg values in the dataset. Due to the fact that these two vehicle attributes do consistently influence mpg, the slope of the linear model is non-zero. Overall, this model effectively predicts mpg as the r-squared value is 0.715.

<img width="454" alt="Screen Shot 2022-03-31 at 7 00 16 PM" src="https://user-images.githubusercontent.com/95303422/161466849-286d0b81-631d-4df2-8d32-e259d7dc7ab2.png">

## Summary Statistics on Suspension Coils
The below manufacturing lot summary statistics reveal that one of the locations is ineffective. While lots 1 and 2 have very small variance in regards to PSI of suspension coils, lot 3 is very inconsistent by comparison. While all the manufacturing lots taken together adhere to the hypothetical company's standard of less than 100 PSI variance, lot 3 has a variance of over 170 PSI. It is obvious that the third lot should borrow some practices from lots 1 and 2.

<img width="334" alt="Screen Shot 2022-03-31 at 7 36 28 PM" src="https://user-images.githubusercontent.com/95303422/161467475-fd04010e-402d-42ab-9e38-1a95ee19d05c.png">

<img width="490" alt="Screen Shot 2022-03-31 at 7 36 49 PM" src="https://user-images.githubusercontent.com/95303422/161467488-ad7e0d8a-4142-4be1-9207-dea3862a7341.png">

## T-Tests on Suspension Coils
The screenshots of t-tests below reiterate the findings from the summary statistics tables. The p-value of the t-test using a sample from the full dataset was about 0.084 which is above the common significance level of 0.05. Therefore, it cannot be confirmed that there are any statistical differences in mean PSI across the dataset. However, the lot 3 t-test returned a p-value below 0.05 (0.042). In this case, it can be concluded that lot 3's mean PSI in the suspension coils is statistically different than the mean of the sample. Since lots 1 and 2 had very high p-values, it is again obvious that lot 3 requires some changes.

<img width="400" alt="Screen Shot 2022-04-03 at 11 10 49 PM" src="https://user-images.githubusercontent.com/95303422/161467833-54d0bfc1-804e-40b7-8c77-1863c06f7cd8.png">

<img width="461" alt="Screen Shot 2022-04-03 at 11 11 06 PM" src="https://user-images.githubusercontent.com/95303422/161467837-3a812e4d-b11e-4a0c-a7df-c845c16778ed.png">
