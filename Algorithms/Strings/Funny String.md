# Question:
```python
In this challenge, you will determine whether a string is funny or not. To determine whether a string is funny, create a copy of the string in reverse e.g. . Iterating through each string, compare the absolute difference in the ascii values of the characters at positions 0 and 1, 1 and 2 and so on to the end. If the list of absolute differences is the same for both strings, they are funny.

Determine whether a give string is funny. If it is, return Funny, otherwise return Not Funny.

Example

The ordinal values of the charcters are .  and the ordinals are . The absolute differences of the adjacent elements for both strings are , so the answer is Funny.

Function Description

Complete the funnyString function in the editor below.

funnyString has the following parameter(s):

string s: a string to test
Returns

string: either Funny or Not Funny
Input Format

The first line contains an integer , the number of queries.
The next  lines each contain a string, .

Constraints

Sample Input

STDIN   Function
-----   --------
2       q = 2
acxz    s = 'acxz'
bcxz    s = 'bcxz'
Sample Output

Funny
Not Funny
Explanation

Let  be the reverse of .

Test Case 0:

, 
Corresponding ASCII values of characters of the strings:
 and 
For both the strings the adjacent difference list is [2, 21, 2].

Test Case 1:

, 
Corresponding ASCII values of characters of the strings:
 and 
The difference list for string  is [1, 21, 2] and for string  is [2, 21, 1].
```
---------------------------------------
# Solution:
```python
def funnyString(s):
    r = s[::-1]                                       # Reversing the String 
    s_ascii = [ord(i) for i in s]                       # finding the Ascii value of string words & storing into list 
    r_ascii = [ord(j) for j in r]                         # finding the Ascii value of string words & storing into list
    s_abso_diff = [abs(s_ascii[i]-s_ascii[i+1]) for i in range(len(s_ascii)-1)]   # finding Absolute differnce 
    r_abso_diff = [abs(r_ascii[j]- r_ascii[j+1]) for j in range(len(r_ascii)-1)]  # finding Absolute differnce 
    if s_abso_diff == r_abso_diff:
        return "Funny"
    else:
        return "Not Funny"
```
