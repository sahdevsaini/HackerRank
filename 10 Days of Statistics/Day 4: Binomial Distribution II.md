### Questio
```
Objective
In this challenge, we go further with binomial distributions. We recommend reviewing the previous challenge's Tutorial before attempting this problem.

Task
A manufacturer of metal pistons finds that, on average,  of the pistons they manufacture are rejected because they are incorrectly sized. What is the probability that a batch of  pistons will contain:

No more than  rejects?
At least  rejects?
Input Format

A single line containing the following values (denoting the respective percentage of defective pistons and the size of the current batch of pistons):

12 10
If you do not wish to read this information from stdin, you can hard-code it into your program.

Output Format

Print the answer to each question on its own line:

The first line should contain the probability that a batch of  pistons will contain no more than  rejects.
The second line should contain the probability that a batch of  pistons will contain at least  rejects.
Round both of your answers to a scale of  decimal places (i.e.,  format).
```
### Solution
```python
import math
p=0.12
q=1-p
case1=0
case2=0
for x in range(0, 3):
    case1+=math.comb(10, x)* (p**x)*(q**(10-x))
for x in range(2, 11):
    case2+=math.comb(10, x)* (p**x)*(q**(10-x))
print(round(case1, 3), round(case2, 3), sep='\n')
```
