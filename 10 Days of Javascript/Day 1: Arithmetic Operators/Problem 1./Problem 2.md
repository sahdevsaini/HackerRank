## Question
```
Objective

In this challenge, we practice looping over the characters of string. Check out the attached tutorial for more details.

Task

First, print each vowel in  on a new line. The English vowels are a, e, i, o, and u, and each vowel must be printed in the same order as it appeared in .
Second, print each consonant (i.e., non-vowel) in  on a new line in the same order as it appeared in .
Function Description

Complete the vowelsAndConsonants function in the editor below.

vowelsAndConsonants has the following parameters:

string s: the string to process
Prints

Print each vowel of  in order on a new line, then print each consonant in order on a new line. Return nothing.
Input Format

There is one line of input with the string .

Output Format

First, print each vowel in  on a new line (in the same order as they appeared in ). Second, print each consonant (i.e., non-vowel) in  on a new line (in the same order as they appeared in ).

Sample Input 0

javascriptloops
Sample Output 0

a
a
i
o
o
j
v
s
c
r
p
t
l
p
s
Explanation 0

Observe the following:

Each letter is printed on a new line.
Then the vowels are printed in the same order as they appeared in .
Then the consonants are printed in the same order as they appeared in .
```
------------------
## Solution
```Javascript
function vowelsAndConsonants(s) {
    const vowels = 'aeiou'
    for(let i=0;i<s.length;i++){
        if(vowels.includes(s[i])){
            console.log(s[i]);
        }
    }
        
    for (let j=0;j<s.length;j++){
           if(!vowels.includes(s[j])){
            console.log(s[j]);
        }
    }
```
