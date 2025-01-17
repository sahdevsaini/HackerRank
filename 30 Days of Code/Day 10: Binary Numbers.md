### Question
```
Objective
Today, we're working with binary numbers. Check out the Tutorial tab for learning materials and an instructional video!

Task
Given a base- integer, , convert it to binary (base-). Then find and print the base- integer denoting the maximum number of consecutive 's in 's binary representation. When working with different bases, it is common to show the base as a subscript.

Example

The binary representation of  is . In base , there are  and  consecutive ones in two groups. Print the maximum, .

Input Format

A single integer, .

Constraints

Output Format

Print a single base- integer that denotes the maximum number of consecutive 's in the binary representation of .

Sample Input 1

5
Sample Output 1

1
Sample Input 2

13
Sample Output 2

2
Explanation

Sample Case 1:
The binary representation of  is , so the maximum number of consecutive 's is .

Sample Case 2:
The binary representation of  is , so the maximum number of consecutive 's is .
```
-------
```python
if __name__ == '__main__':
    n = int(input().strip())
    l = []
    one_count = 0
    max_count = 0
    while(n):
        r = n%2
        l.append(r)
        n = n//2
    for i in l:
        if i==1:
            one_count += 1
            max_count = max(max_count, one_count)
        else:
            one_count = 0      
    print(max_count)
```
