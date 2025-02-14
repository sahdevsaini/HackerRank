### Question
```
Write a Bash script which accepts  as input and displays the greeting "Welcome (name)"

Input Format

There is one line of text, .

Output Format

One line: "Welcome (name)" (quotation marks excluded).
The evaluation will be case-sensitive.

Sample Input 0

Dan  
Sample Output 0

Welcome Dan  
Sample Input 1

Prashant
Sample Output 1

Welcome Prashant
Language: BASH
More
123
read -p "Enter your name: " name
echo "Welcome $name"

Line: 2 Col: 20

Test against custom input
Congratulations
You solved this challenge. Would you like to challenge your friends?Share on FacebookShare on TwitterShare on LinkedIn

Test case 0

Test case 1

Test case 2

Test case 3

Test case 4
Compiler Message
Success
Input (stdin)
Dan
Expected Output
Welcome Dan

```
--------
Soluiton
```bash
read -p "Enter your name: " name
echo "Welcome $name"
```
