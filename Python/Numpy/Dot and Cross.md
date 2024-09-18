## Question :- 
```python
dot

The dot tool returns the dot product of two arrays.

import numpy

A = numpy.array([ 1, 2 ])
B = numpy.array([ 3, 4 ])

print numpy.dot(A, B)       #Output : 11
cross

The cross tool returns the cross product of two arrays.

import numpy

A = numpy.array([ 1, 2 ])
B = numpy.array([ 3, 4 ])

print numpy.cross(A, B)     #Output : -2
Task

You are given two arrays  and . Both have dimensions of X.
Your task is to compute their matrix product.

Input Format

The first line contains the integer .
The next  lines contains  space separated integers of array .
The following  lines contains  space separated integers of array .

Output Format

Print the matrix multiplication of  and .

Sample Input

2
1 2
3 4
1 2
3 4
Sample Output

[[ 7 10]
 [15 22]]
```
--------------------------------------------------------------------------------------------------------------
## Solution
```python
import numpy as np
N = int(input())
l1 = []
for i in range(N):
    l1.append(list(map(int,input().split())))
A = np.array(l1)
l2 =[]
for i in range(N):
    l2.append(list(map(int,input().split())))
B= np.array(l2)
print(np.array(A) @ np.array(B))    
```        
