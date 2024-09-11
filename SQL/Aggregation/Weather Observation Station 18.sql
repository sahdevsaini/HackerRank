## Question:-
Consider  and  to be two points on a 2D plane.

 happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

Input Format

The STATION table is described as follows:

where LAT_N is the northern latitude and LONG_W is the western longitude.

========================================================================================================================

## Solution:- 
  --- For Sql Server 
  
SELECT CAST(ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4)
AS decimal(10,4) ) FROM station;



## Explanation:-
  
ABS(MIN(LAT_N) - MAX(LAT_N)): Calculates the absolute difference between the minimum and maximum values of LAT_N (latitude).
ABS(MIN(LONG_W) - MAX(LONG_W)): Calculates the absolute difference between the minimum and maximum values of LONG_W (longitude).
ROUND(..., 4): Rounds the result to 4 decimal places.
CAST(... AS DECIMAL(10, 4)): This casts the result to a decimal number with exactly 4 decimal places, ensuring that extra trailing zeros are not displayed.
  





