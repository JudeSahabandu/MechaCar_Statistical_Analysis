# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![mpg_regression_analysis](/Images/mpg_regression_analysis.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

This analysis uses a multiple linear regression model. The multiple linear regression takes into account the following variables impact on the mpg (miles per gallon of the MechaCar)

    * vehicle_length
    * vehicle_weight  
    * spoiler_angle
    * ground_clearance 
    * AWD

Out of the above independant variables, the null hypothesis can be rejected for both vehicle length and ground clearence as they possess a p-value less than the significance value of 0.05. As demonstrated in the attached image. Thier respective p-values are as follows;

    * vehicle_length - 2.60e-12
    * ground_clearance - 5.21e-08

The above indicates that both coefficients provided a non-random amount of variance to the mpg values in the datase

2. Is the slope of the linear model considered to be zero? Why or why not?

There is sufficient evidence to reject the null hypothesis which indicates that the slope of the linear model is not 0. This can be seen through the values of the following coefficients;

    * r-squared value - 0.7149
    * p-value - 5.35e-11 (well below 0.05 significance level)

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Given that the p value is 5.35e-11, well below the significance level of 0.05, which indicate there are non random variables impacting the mpg of the MechaCars and the r-squared value is 0.7149 which indicates that 71.5% of the predictions will be correct using this linear model.

The above demonstrates that this linear model predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

![total_summary](/Images/total_summarys.png)

![lot_summary](/Images/lot_summary.png)

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Based on the summary statistics, we see that the total summary for all 3 combined lots variance is at 62.29, which indicates that the overall lots have met the required design specification.

Although, when we look at the individual lots as depicted in the lot summary image, we see the following;

    * Lot 1 - 0.9795918 variance PSI
    * Lot 2 - 7.4693878 variance PSI
    * Lot 3 - 170.2861224 variance PSI

The above measures indicate that only lots 1 and 2 have complied with the design specification and lot 3 has not as the variance has exceeded the 100 PSI variance threshold.

## T-Tests on Suspension Coils

1. Determination if PSI across all lots is statistically different from the population mean of 1,500 PSI.

![random_sample_t_test](/Images/random_sample_t_test.png)

In the above t-test results, the analysis generated a random sample of 60 data points from the population to compare with the total population of 3 lots. This was done with the intention of determining if there is a statistical difference of PSI across all lots when compared to the population mean of 1500 PSI.

The output of the t-test yielded p-value = 0.1243. This indicates that the null hypothesis cannot be rejected. Therefore, there is no significant difference between random sample of all lots to the overall population.

2. Determination if PSI across each lot is statistically different from the population mean of 1,500 PSI.

![t_tests_by_lot](/Images/t_tests_by_lot.png)

When executing the t-tests by each individual lot using the subset() function, we see the following results;

    * Lot 1 - p-value 1
    * Lot 2 - p-value 0.6072
    * Lot 3 - p-value 0.04168

Based on the above results we can accept the null hypothesis for Lots 1 and 2 as the p value is greater than the significance value of 0.05. But considering Lot 3, the p-value is 0.04168 which is lower than 0.05. Hence, we need to reject the null hypothesis determining that Lot 3 is significantly different from the population mean of 1,500 PSI.

## Study Design: MechaCar vs Competition

### Description of a statistical study that can quantify how the MechaCar performs against the competition

1. What metric or metrics are you going to test?

In assessing the market feasibility of the MechaCar, we can focus our attention on the following metrics affecting fuel efficiency of the MechaCar against it's competition. Given climate change and cost of fuel we can consider that most consumers are considerate towards fuel efficiency when making their purchase decisions.

    * Effects of Horse-Power (Hp) on Miles-Per-Gallon (Mpg) 
    * Effects of Engine Displacement (CC) on Miles-Per-Gallon (Mpg)
    * Effects of Weight (Kg) on Miles-Per-Gallon (Mpg)

2. What is the null hypothesis or alternative hypothesis?

Considering the above metrics to be tested on comparing MechaCar with competition the null and alternate hypothesis can be considered as follows;

Null Hypothesis (Ho) - There is a correlation between independant variables (Hp,CC,Kg) and dependant variable (Mpg)
Alternate Hypothesis (Ha) - There is no correlation between independant variables (Hp,CC,Kg) and dependant variable (Mpg)

3. What statistical test would you use to test the hypothesis? And why?

Since we are trying to determine correlation between multiple independant variables (Hp,CC,Kg) and a single dependant variable (Mpg), the most suitable statistical test is the multiple regression model.

We can assess each independant variable individually for correlation with the dependant variable, but this would not tell give us a cohesive picture as to which factor has greater or lesser influence on the fuel consumption of the vehicle (the dependant variable)

4. What data is needed to run the statistical test?

The data required to run the statistical test can be seen in the below equations;

summary(lm(mpg ~ disp + wt + hp, data = database))

* lm() is the function used to run multiple linear regression.
* mpg is the fuel efficiency metric used to determine consumption of fuel per gallon in miles
* displacement (CC) is the engine displacement of the car
* weight (wt) is the weight of the car in Kg
* horsepower is the power of the engine of the car

The above will provide us with the following two metrics;

1. The r-squared value - Indicates the percentage the linear model will be correct in predicting outcomes
2. The p-value - Indicates if the null hypothesis tested needs to be accepted or rejected

If the p-value is greater than significance value then we accept null hypothesis, but if it is lesser than significance value then we reject null hypothesis.















