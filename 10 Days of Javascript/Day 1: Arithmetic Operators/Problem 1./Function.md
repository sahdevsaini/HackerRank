## Question
```
Objective

Today, we're discussing JavaScript functions. Check out the attached tutorial for more details.

Task

Implement a function named factorial that has one parameter: an integer, . It must return the value of  (i.e.,  factorial).

Input Format

Locked stub code in the editor reads a single integer, , from stdin and passes it to a function named factorial.

Constraints

Output Format

The function must return the value of .

Sample Input 0

4
Sample Output 0

24
Explanation 0

We return the value of .

Language: JavaScript (Node.js)
More
222324252627282930313219202117183334353637
function readLine() {
    return inputString[currentLine++];
}
/*
 * Create the function factorial here
 */
function factorial(n){
if(n==0 || n==1){
    return 1;
}

13process.stdin.on('end', _ => {
Line: 29 Col: 13

Test against custom input
Congratulations!

You have passed the sample test cases. Click the submit button to run your code against all the test cases.


Sample Test case 0
Input (stdin)
4
Your Output (stdout)
24
Expected Output
24

```
---------------------
## Solution
```Javascript
function factorial(n){
if(n==0 || n==1){
    return 1;
}
 else
 {
    return n*factorial(n-1);
 }   
}
```
