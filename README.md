# AutosRUs

Jeremy is an employee of AutoRUs. He has been with the auto manufacturer for 10 years. Jeremy has been selected to to lead the new data analytics team. He's confident that his 10 years working with the manufacturing and research team has provided him with sufficient expertise in the subject matter. 



## Linear Regression to Predict MPG

The first thing Jeremy and his team wanted to look at was how a number of variables in the automobile's design affects the miles per gallon achieved by the vehicle.

The team took a number of design considerations and analyzed them against miles per gallon achieve by the vehicle.  

<pre>
Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00  
             AWD  
      -3.411e+00  


Coefficients:
                   Estimate 	Std. Error t value 	Pr(>|t|)    
(Intercept)      -1.040e+02  	1.585e+01  -6.559 	5.08e-08 ***
vehicle_length    6.267e+00  	6.553e-01   9.563 	2.60e-12 ***
vehicle_weight    1.245e-03  	6.890e-04   1.807   	0.0776 .  
spoiler_angle     6.877e-02  	6.653e-02   1.034   	0.3069    
ground_clearance  3.546e+00  	5.412e-01   6.551 	5.21e-08 ***
AWD              -3.411e+00  	2.535e+00  -1.346   	0.1852    

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
</pre>

What the team found was that The overall linear regression showed that the variables did affect miles per gallon of the vehicle, especially vehicle length and ground clearance.   

## Summary Statistics on Suspension Coils

The next analysis that Jeremy and his team did was to look at a number of lots of suspension coils. They wanted to compare the lots manufactured vs the expected for the suspension coils.

<pre>
 total_summary
		mean 		median 		Variance  	SD
1 		1498.78   	1500 		62.29356 	7.892627

 Manufacturing_Lot  mean 	median		Variance	SD
  <chr>             <dbl>  	<dbl>    <dbl>  		<dbl>
1 Lot1              1500   	1500		0.980  		0.990
2 Lot2              1500.  	1500	 	7.47   		2.73 
3 Lot3              1496.  	1498.		170.    	13.0  
</pre>

When we looked at the all of the coils produced, we see a standard deviation of under 8, showing that the suspension coils are close to the expected of 1500.

When the team looked at each lot of suspension coils manufactured they found that while lots 1 and 2 were manufactured within specifications. Lot 3 had a variance of 170 and a standard deviation of 13.0. This lot should either be recalled if already shipped out, or destroyed as defective if waiting to be shipped.


## T-Tests on Suspension Coils
	One Sample t-test


The next analysis that Jeremy and his team did was to look at a number of lots of suspension coils. They wanted to compare the lots manufactured vs the expected for the suspension coils.

When the team looked at all the lots they had manufactured, the T-Test showed that the suspension coils were manufactured within specification.

<pre>
data:  suspension_Table$PSI
t = 2325.7, df = 149, p-value < 2.2e-16
alternative hypothesis: true mean is not equal to 0
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
</pre>

Since the team had seen an irregularity with lot 3 in the standard deviation they decided to look at each lot with a T-Test to see how the different manufacturing lots stand up to the expected standard.



<pre>
data:  suspens_lot1
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

data:  suspens_lot2
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 


data:  suspens_lot3
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
</pre>

<table>
<tr>
<th></th>
<th>T- Score</th>
<th>P-Value</th>
</tr>
<tr>
<td>Lot 1</td>
<td>0</td>
<td>1</td>
</tr>
<tr>
<td>Lot 2</td>
<td>0.517</td>
<td>0.607</td>
</tr>
<tr>
<td>Lot 3</td>
<td>-2.092</td>
<td>.042</td>
</tr>
</table>

The analysis of each lot's data shows results similar to the standard deviation tests. Lot 1 and lot 2 both look well within specification, and both looked good. Lot 3 though showed problems. The mean of 1496 with a t-score of -2.092 and a p-value of .042 shows this lot should be recalled or destroyed as defective.

## Study Design: MechaCar vs Competition


Management was impressed with the team's efforts. They asked if Jeremy and the team could help design a statistical study which will show how AutosRUs's cars compare to the competition.

## Fuel Economy

The first study Jeremy and his team decide to design is to look at Fuel Economy of the cars they manufacture versus the cars manufactured by our competition. The team is pretty sure that AutoRUs's vehicles have better fuel economy than their competitors.

the study the team will design will test the hypothesis that AutoRUs's vehicles have a better mean Miles Per Gallon fuel economy than their competitor's vehicles.

### Data Needs

The data analytics team sets out to figure out what data they will need perform this study for management.

#### Mean of fleet

The first part of the study the team wants to provide management with is an overall Miles per Gallon of all the cars manufactured by the company. The team will need MPG numbers for all the vehicles produced by the company.

The team will have to find a source of data that can provide the MPG data for all of the cars our competitors produce.

An example would be:

<table>
<tr>
<th></th>
<th>AutosRUs</th>
<th>Comp 1</th>
<th>Comp 2</th>
<th>Comp 3</th>
</tr>
<tr>
<th>Fleet MPG</th>
<th>32.7</th>
<th>31.25</th>
<th>30.95</th>
<th>30.0</th>
</tr>
</table>

#### Mean by type of vehicle 

The next part of the study the team wants to provide management with is an overall Miles per Gallon of each car class manufactured by the company. The team will need MPG numbers for all the vehicles produced by the company.

The team will have to find a source of data that can provide the MPG data for all of the cars our competitors produce.

An example would be:

<table>
<tr>
<th></th>
<th>AutosRUs</th>
<th>Comp 1</th>
<th>Comp 2</th>
<th>Comp 3</th>
</tr>
<tr>
<th>Coupe MPG</th>
<th>47.2</th>
<th>45.6</th>
<th>47.8</th>
<th>45.4</th>
</tr>
<tr>
<th>Sedan MPG</th>
<th>35.7</th>
<th>33.4</th>
<th>32.3</th>
<th>33.2</th>
</tr>
<tr>
<th>SUV MPG</th>
<th>25.5</th>
<th>24.5</th>
<th>22.6</th>
<th>21.9</th>
</tr>
<tr>
<th>Truck MPG</th>
<th>22.4</th>
<th>21.5</th>
<th>21.1</th>
<th>19.6</th>
</tr>
</table>


#### Mean of Coups by Engine

As the team looks at the results of their study, they wonder how AutoRUs had a lower MPG for the coupes than their competitor, competitor 2.

The team will need engine specifications for each coupe produced by AutosRUs and all of the competitors.

The team will have to find a source of data that can provide specifications data for all of the cars our competitors produce.

An example would be:

<table>
<tr>
<th></th>
<th>AutosRUs</th>
<th>Comp 1</th>
<th>Comp 2</th>
<th>Comp 3</th>
</tr>
<tr>
<th>V4 MPG</th>
<th>64.2</th>
<th>62.3</th>
<th>54.6</th>
<th>50.4</th>
</tr>
<tr>
<th>V6 MPG</th>
<th>47.2</th>
<th>45.8</th>
<th>41</th>
<th>40.4</th>
</tr>
<tr>
<th>V8 MPG</th>
<th>30.2</th>
<th>28.7</th>
<th></th>
<th></th>
</tr>
</table>

The interesting thing, is that AutosRUs lost the Coupe MPG comparison because Competitor 2 doesn't have a V8 in their offerings. The team calculated that if the V8's in AutoRUs's offerings were removed from the coupe average, AutosRUs would have an average miles per gallon for Coupes of 55.7. Easily besting all of their competition. 


