## Question:-
```python
mean

The mean tool computes the arithmetic mean along the specified axis.

import numpy

my_array = numpy.array([ [1, 2], [3, 4] ])

print numpy.mean(my_array, axis = 0)        #Output : [ 2.  3.]
print numpy.mean(my_array, axis = 1)        #Output : [ 1.5  3.5]
print numpy.mean(my_array, axis = None)     #Output : 2.5
print numpy.mean(my_array)                  #Output : 2.5
By default, the axis is None. Therefore, it computes the mean of the flattened array.

var

The var tool computes the arithmetic variance along the specified axis.

import numpy

my_array = numpy.array([ [1, 2], [3, 4] ])

print numpy.var(my_array, axis = 0)         #Output : [ 1.  1.]
print numpy.var(my_array, axis = 1)         #Output : [ 0.25  0.25]
print numpy.var(my_array, axis = None)      #Output : 1.25
print numpy.var(my_array)                   #Output : 1.25
By default, the axis is None. Therefore, it computes the variance of the flattened array.

std

The std tool computes the arithmetic standard deviation along the specified axis.

import numpy

my_array = numpy.array([ [1, 2], [3, 4] ])

print numpy.std(my_array, axis = 0)         #Output : [ 1.  1.]
print numpy.std(my_array, axis = 1)         #Output : [ 0.5  0.5]
print numpy.std(my_array, axis = None)      #Output : 1.11803398875
print numpy.std(my_array)                   #Output : 1.11803398875
By default, the axis is None. Therefore, it computes the standard deviation of the flattened array.

Task

You are given a 2-D array of size X.
Your task is to find:

The mean along axis 
The var along axis 
The std along axis 
Input Format

The first line contains the space separated values of  and .
The next  lines contains  space separated integers.

Output Format

First, print the mean.
Second, print the var.
Third, print the std.

Sample Input

2 2
1 2
3 4
Sample Output

[ 1.5  3.5]
[ 1.  1.]
1.11803398875
```
## Solution
```python
import numpy as np

N,M = map(int,input().split())
l = []
for i in range(N):
    l.append(list(map(int,input().split())))
arr = np.array(l)
print(np.mean(arr,axis =1))
print(np.var(arr,axis =0))  
print(round(np.std(arr),11))
```
