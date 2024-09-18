## Question:
```python
The distance between two array values is the number of indices between them. Given , find the minimum distance between any pair of equal elements in the array. If no such value exists, return .

Example

There are two matching pairs of values:  and . The indices of the 's are  and , so their distance is . The indices of the 's are  and , so their distance is . The minimum distance is .

Function Description

Complete the minimumDistances function in the editor below.

minimumDistances has the following parameter(s):

int a[n]: an array of integers
Returns

int: the minimum distance found or  if there are no matching elements
Input Format

The first line contains an integer , the size of array .
The second line contains  space-separated integers .

Constraints

Output Format

Print a single integer denoting the minimum  in . If no such value exists, print .

Sample Input

STDIN           Function
-----           --------
6               arr[] size n = 6
7 1 3 4 1 7     arr = [7, 1, 3, 4, 1, 7]
Sample Output
3

```
### Solution
```python
import math
import os
import random
import re
import sys

def minimumDistances(a):
    f = []
    # Iterate over the list
    for i in range(len(a)):
        # Iterate over the rest of the list, starting from the next element
        for j in range(i+1, len(a)):
            # Compare if elements are the same
            if a[i] == a[j]:
                # Calculate the absolute distance and add it to the list
                f.append(abs(i - j))
    
    # Return the minimum distance if there are any, otherwise return -1
    return min(f) if f else -1
```
