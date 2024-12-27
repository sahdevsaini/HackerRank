### Question 
```
Objective
In this challenge, we practice calculating probability.

Task
For a single toss of  fair (evenly-weighted) dice, find the probability that the values rolled by each die will be different and their sum is .

Output Format

In the editor below, submit your answer as Plain Text in the form of an irreducible fraction , where  and  are both integers.

Your answer should resemble something like:

3/4  
(This is NOT the answer, just a demonstration of the answer format.)
```
-----
### Solution
```python
diff_sum = 0
total_roll = 0

for i in range(1,6+1):
    for j in range(1,6+1):
        if (i+j)==6 and (i!=j):
            diff_sum += 1 
        total_roll += 1 
            
print(str(diff_sum//diff_sum) + '/' + str(total_roll//diff_sum))
```
