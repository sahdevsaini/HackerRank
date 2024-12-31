### Question
```
Objective
In this challenge, we learn about binomial distributions. Check out the Tutorial tab for learning materials!

Task
The ratio of boys to girls for babies born in Russia is . If there is  child born per birth, what proportion of Russian families with exactly  children will have at least  boys?

Write a program to compute the answer using the above parameters. Then print your result, rounded to a scale of  decimal places (i.e.,  format).

Input Format

A single line containing the following values:

1.09 1
If you do not wish to read this information from stdin, you can hard-code it into your program.

Output Format

Print a single line denoting the answer, rounded to a scale of  decimal places (i.e.,  format).
```
----
### Solution
```python
import math
boys = 1.09/2.09
girls = 1/2.09
ans = 0
for x in range(3, 7):
    ans += math.comb(6, x)*boys**x*girls**(6-x)
print(round(ans, 3))
```
