Reem_Almijmaj_HW4



Question 1:
The Linear Regression equation is of the form:
x=w0 + w1a1 + w2a2 + w3a3 + w4a4 +.....+ wkak

The linear equation generated is - 

class = -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411 
The total number of terms(predictors) are 12 including the w0 term which is called y-intercept(36.3411) and the 11 attributes along with their weights which is determined from the training data.
The output is to find a linear relationship between the predictors and the dependent variable(MEDV)
The equation result Discussion:
Weka performs feature selection and removes features that reduce the performance; therefore, INDUS and AGE were removed. In other words, INDUS and AGE do not play a role in the classification value MEDV therefore assume their weight/coefficient as 0.  
Simultaneously the Boolean variable CHAS is considered only when is 1. This means that the idea of tracts not bounding river does not affect the decision-making process directly. When Chas has value 0, its effect is incorporated in the intercept.

The Coeff for the remaining variables suggests how important the variables are in either increasing the MEDV value by considering how much of a positive factor they contribute or decreasing the MEDV value by considering how much of a negative factor they contribute.
For us more the avg number of rooms per dwelling, the more likely it is that the MEDV value would be greater. Similarly, if there is high concentration of nitric oxide (parts per 10 million), it would mean that the MEDV value in such a region would be fairly low i.e., the valuation for homes in high NOX regions are low. This makes sense as high concentration of NOX is not good for humans. Furthermore, for each of the terms/variables of the equation holds and can be considered to identify what regions would have higher valuation of owner-occupied homes and what factors would dampen the values.


_______________________________________________________________________________



Question 2:

Here according to Q2_statistic Screenshot we can see the linear equation for num_rings:

num_rings=-0.8249*sex=I+
0.0577*sex=M+
(-0.4583)*length+
11.0751*diameter+
10.7615*height+
8.9754*whole_weight+
(-19.7869)*shucked_weight+
(-10.5818)*viscera_weight+
8.7418*shell_weight+
3.8946

____________________________________________________________


Question 3:
The linear regression equation is :
num_rings=+2.836+
(-11.933)*length+
25.766*diameter+
20.358*height

The equation has 4 terms terms. The equation has 4 terms including the w0 term and the 3 attributes (i.e length, diameter, weight) along with their weights. The equation is the sum of the product of the weights and the corresponding attributes. The linear regression equation helps predict the numer of rings(num_rings).

