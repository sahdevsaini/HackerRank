## Question
```
Objective

In this challenge, we learn about if-else statements. Check out the attached tutorial for more details.

Task

Complete the getGrade(score) function in the editor. It has one parameter: an integer, , denoting the number of points Julia earned on an exam. It must return the letter corresponding to her  according to the following rules:

If , then .
If , then .
If , then .
If , then .
If , then .
If , then .
Input Format

Stub code in the editor reads a single integer denoting  from stdin and passes it to the function.

Constraints

Output Format

The function must return the value of  (i.e., the letter grade) that Julia earned on the exam.

Sample Input 0

11
Sample Output 0

D
Explanation 0

Because , it satisfies the condition  (which corresponds to D). Thus, we return
```
--------------------------
## Solution
```Javascript
function getGrade(score) {
    score = Number.parseInt(score);
    let grade;
    if (score > 25 && score <= 30){
        grade = 'A';  
    }
    else if (score > 20 && score <= 25){
        grade = 'B' 
    }
    else if (score > 15 && score <= 20){
        grade = 'C'
    }
    else if (score > 10 && score <= 15){
        grade = 'D'   
    }
    else if (score > 5 && score <= 10){
       grade = 'E'  
    }
    else if (score > 0 && score <= 5){
       grade = 'F'  
    }
    return grade;
}
```
