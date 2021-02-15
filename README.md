# **MechaCar_Statistical_Analysis**

## **Overview of the analysis:**
An automobile company's newest prototype the MechaCar, is suffering from some troubles in the production Department. due to this, there is an impact on the progress of manufacturing team. To resolve the problem, an analysis of production data is to be conducted to provide the insights to help the manufacturing team.
To conduct this statistical analysis, techniques such as Multiple linear regression, Summary Statistics and t- test have been used. 

Also, a statistical study needs to be designed, that can quantify how the MechaCar performs against the competition, critically thinking about what metrics would be of interest to the consumer.
## **Linear Regression to Predict MPG**

![](https://github.com/kirtibhandari/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable-1-output.png)

- The following variables/coefficients which provided a non-random amount of variance to the mpg values in the dataset are:
 **Vehicle_length, ground_clearance as well as intercept**

    In this part of analysis, Multiple Linear Regression technique has been used to determine the predictability of MPG of the prototypes being manufactured by the automobile company, based upon other features/variables’ relationship as independent variables with dependent variable MPG.
    
    In order to determine which variables, provide a significant contribution to the linear model, we need to look at the individual variable's p-values.

    In the summary output, each Pr(>|t|) values represents the probability that each coefficient contributes a random and non-random amount of variance to the linear model. 
    
    Here, we have the p-value of vehicle_length = 2.60 * 10(raised to the power of -12), ground_clearance = 5.21 * 10(raised to the power of -8) and intercept = 5.08 * 10 (raised to the power of -8). These are very low in comparison to our assumed significance level of 0.05%. Hence, these variables are unlikely to provide random amount of variance to the linear model.

- With respect to the **slope** of the linear model, it is hereby stated that the p-value of our linear model is 5.35 * 10-7 which is much smaller than assumed significance level of 0.05 %. 

    Therefore, we can state that there is sufficient evidence to reject null hypothesis that the slope of this linear model is not zero.

- In the aspect of predictability of **mpg** of MechaCar prototypes, effectively, using this linear model, it can be said that based upon the r-squared value, 0.71, which means 71% of all mpg predictions will be correct when using this linear model. This value of r says about the strength of correlation between the dependant and independent variables used in a multiple linear regression model.

Summarily, as we have intercept's p-value as a significant value for current dataset and we have r-squared value as 71%; we can say that there are other variables and factors that contribute to the variation in **mpg** , that have not been included in our model. These variables may or may not be within our dataset and may still need to be collected or observed.

## **Summary Statistics on Suspension Coils**

![](https://github.com/kirtibhandari/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable-2-output.png)

From the results obtained, we need to provide answer to the following requirement:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The results obtained, for the total summary of all the manufacturing lots, show that the variance is 62.29 PSI, which is well below 100 PSI and hence, it meets the design specification of lots, when analysed collectively.

On the other hand,the Lot-wise summary has different values for variance.

Lot1 and Lot2 are very low variance values 0.98 and 7.47 respectively, compared to the allowed value of 100 PSI. Whereas, for Lot3 it's 170.29, which is higher and hence does not meet the specification requirement.
## **T-Tests on Suspension Coils**

![](https://github.com/kirtibhandari/MechaCar_Statistical_Analysis/blob/main/Resources/deliverable-3-output.png)

Here we have used one-sample t-test to determine whether there is statistical difference between the means of sample dataset and a hypothesized, potential population data set for the following hypothesis:

H0: there is no statistical difference between the observed sample mean and its presumed population mean
Ha: there is a statistical difference between the observed sample mean and its presumed population mean.

There are number of metrics produced from the t.test() function but for now, we are only concerned about the calculated p-value. Also,here we assume the usual significance level of 0.05%.

1) First t-test has been performed to determine if PSI across all manufacturing lots is statistically different from the given population mean of 1500 PSI 

    For the current mean PSI, across all manufacturing lots, we have a p-value of 0.06 %, as shown in first test results in the screenshot above. This value is above our assumed significance level.

    Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two are statistically similar.
2) Next,we we have performed one-sample t-test to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1500 PSI.

    For this, we need to see the p-value for each of the manufacturing lot's PSI mean. From the above results in the screenshot, for Lot1 and Lot2, we have:

    - For Lot1, p-value = 1, which is above our usual significance level of 0.05%
    - For Lot2, p-value = 0.61 %, which is above our usual significance level of 0.05%

    Hence,for the Lot1, Lot2 we do not have sufficient evidence to reject the null hypothesis and we would state that the two means are statistically similar, for each Lot1 and Lot2.

    But that is not the case with Lot3 PSI mean where p-value = 0.04%.

    This value is lower than our assumed usual significance level of 0.05%,and hence we have sufficient evidence to reject the null hypothesis and state that the two means are statistically different fro the population.
## **Study Design: MechaCar vs Competition**
### **Description:**
The following description briefs how the below designed statistical study can quantify how the MechaCar performs against the competition.

 **Metrics of interest to a consumer:**

To compare the performance of MechaCar, against its competition, we can consider multiple features of curves to compare the overall performance. These features might include cost, MPG(city/ highway), horsepower ,acceleration, engine capacity,transmission, seating capacity,cargo space, maintenance cost, safety rating,general insurance cost, depreciation cost and many more.

We can limit our statistical analysis to few variables to evaluate the performance of MechaCar against the competition, for the scope of this project requirements.

We can choose monthly cost for the consumer as the dependent variable and other variables for MechaCar, and the other cars in competition, such as total cost of the car, monthly insurance cost,  MPG, engine capacity, maintenance cost.

**Statistical test chosen and why:**

We can conduct a one-way ANOVA test taking into consideration, Monthly cost of different cars based upon vehicle engine capacity.

A one-way ANOVA test is used to test the means of a single dependent variable across a single independent variable with multiple groups, that is, monthly cost of different cars as a single dependent variable and single independent variable, vehicle’s capacity.

**Null hypothesis or alternative hypothesis:**

The statistical hypothesis of this test will be the following:
H-0: the means of all groups are equal
H-a: at least one of the means is different from all groups

**Data needed to run this statistical test:**

To perform this kind of test, we will need the input data that must be validated prior to using the statistical test:
1.	the dependent variable is numerical and continuous, and the independent variables are categorical
2.	the dependent variable is considered to be normally distributed
3.	the variance among each group should be very similar

For this statistical test, we can choose to answer the question, “Is there any statistical difference in the monthly cost of a vehicle based on it's engine Capacity?”
-	In this case, we may use the monthly cost values (M_Cost) obtained from our multiple linear regression model, for the MechaCar and the cars in competition, which will be our dependent, measured variable
-	Engine’s capacity(Eng_Capacity) , will be our independent categorical variable.


At first, we can use multiple linear regression model to see how the MechaCar’s monthly cost comes out to be, for the consumer and how it varies against the competition's cars.

Now we can obtain the monthly cost of MechaCar, we can have monthly cost of different vehicles in the competition. For instance, we can have 100 popular cars and we have monthly cost of all those cars based upon the similar independent variables as we have chosen for the MechaCar, and dependent variable, monthly cost on similar grounds.
 
Secondly, we need to convert this numerical interval vector , engine's capacity, into a categorical vector . This can be done by factor() function.

For this test, we can use aov() and summary() functions to obtain our p-values. The aov() function expects that all of the observations and grouping information are contained within a single data frame once we have our cleaned and labeled data frame, we can perform test using the said function .

By using these, we will have our p-value statistic.Depending upon what p-value is, we can determine the significance level of the obtained p-value, as compared to the assumed significance level of 0.05%. 

Depending upon how small our p-value is, from the assumed significance level, we would be able to state whether there is a sufficient evidence to reject the null hypothesis and accept that there is a significant difference in monthly cost between atleast 1 engine capacity type and the others.


