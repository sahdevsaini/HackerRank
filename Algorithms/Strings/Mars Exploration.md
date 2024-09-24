## Question:
```python
Function Description

Complete the marsExploration function in the editor below.

marsExploration has the following parameter(s):

string s: the string as received on Earth
Returns

int: the number of letters changed during transmission
Input Format

There is one line of input: a single string, .

Constraints

 will contain only uppercase English letters, ascii[A-Z].
Sample Input 0

SOSSPSSQSSOR
Sample Output 0

3
Explanation 0

 = SOSSPSSQSSOR, and signal length . They sent  SOS messages (i.e.: ).

Expected signal: SOSSOSSOSSOS
Recieved signal: SOSSPSSQSSOR
Difference:          X  X   X
Sample Input 1

SOSSOT
Sample Output 1

1
Explanation 1

 = SOSSOT, and signal length . They sent  SOS messages (i.e.: ).

Expected Signal: SOSSOS     
Received Signal: SOSSOT
Difference:           X
Sample Input 2

SOSSOSSOS
Sample Output 2

0
Explanation 2

Since no character is altered, return 0.

Language
Python 3
More
567891011121314151617181920212341
    for i,j in zip(s,target):
        if i != j:
            count += 1
    return count        
if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = marsExploration(s)

    fptr.write(str(result) + '\n')

    fptr.close()





Line: 24 Col: 17

Test against custom input
Congratulations!

You have passed the sample test cases. Click the submit button to run your code against all the test cases.


Sample Test case 0

Sample Test case 1

Sample Test case 2
Input (stdin)
SOSSPSSQSSOR
Your Output (stdout)
3
Expected Output
3
```
## Solution:
```python
def marsExploration(s):
    count  = 0
    r = len(s)//3
    target  = 'SOS'*r
    
    for i,j in zip(s,target):
        if i != j:
            count += 1
    return count        
```
