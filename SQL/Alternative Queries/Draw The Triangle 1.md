# Question:
```python
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* * * * * 
* * * * 
* * * 
* * 
*
Write a query to print the pattern P(20).
```
----------------------------------
# Solution
```python             # Using MS SQl Server
declare @row int = 20; 
while (@row>0) 
    Begin 
        print replicate('* ',@row) 
        set @row = @row - 1 
    END
```
