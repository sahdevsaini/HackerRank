## Question:- 
```python
You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.



Grades contains the following data:



Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.

Sample Input



Sample Output

Maria 10 99
Jane 9 81
Julia 9 88 
Scarlet 8 78
NULL 7 63
NULL 7 68

Note

Print "NULL"  as the name if the grade is less than 8.

Explanation

Consider the following table with the grades assigned to the students:



So, the following students got 8, 9 or 10 grades:

Maria (grade 10)
Jane (grade 9)
Julia (grade 9)
Scarlet (grade 8)
2
SELECT 
3
    CASE 
4
        WHEN g.grade >= 8 THEN s.name 
5
        ELSE 'NULL' 
6
    END AS name,
7
    g.grade,
8
    s.marks
9
FROM students s
10
JOIN Grades g 
11
ON s.marks BETWEEN g.Min_Mark AND g.Max_Mark
12
order by g.grade desc,
13
s.name, s.marks
Line: 10 Col: 15
Run Code Submit CodeUpload Code as File
Congratulations!

You have passed the sample test cases. Click the submit button to run your code against all the test cases.


Sample Test case 0
Your Output (stdout)
Britney 10 95
Heraldo 10 94
Julia 10 96
Kristeen 10 100
Stuart 10 99
Amina 9 89
Christene 9 88
Salma 9 81
Samantha 9 87
Scarlet 9 80
Vivek 9 84
Aamina 8 77
Belvet 8 78
Paige 8 74
Priya 8 76
Priyanka 8 77
NULL 7 64
NULL 7 66
NULL 6 55
NULL 4 34
NULL 3 24
```
-----------------------------------------------------------------------------------------------
## Solution
```python
SELECT 
    CASE 
        WHEN g.grade >= 8 THEN s.name 
        ELSE 'NULL' 
    END AS name,
    g.grade,
    s.marks
FROM students s
JOIN Grades g 
ON s.marks BETWEEN g.Min_Mark AND g.Max_Mark
order by g.grade desc,
s.name, s.marks
```
