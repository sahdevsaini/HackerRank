### Question
```
Objective
Today, we are building on our knowledge of arrays by adding another dimension. Check out the Tutorial tab for learning materials and an instructional video.

Context
Given a  2D Array, :

1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
We define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:

a b c
  d
e f g
There are  hourglasses in , and an hourglass sum is the sum of an hourglass' values.

Task
Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.

Example

In the array shown above, the maximum hourglass sum is  for the hourglass in the top left corner.

Input Format

There are  lines of input, where each line contains  space-separated integers that describe the 2D Array .

Constraints

Output Format

Print the maximum hourglass sum in .

Sample Input

1 1 1 0 0 0
0 1 0 0 0 0
1 1 1 0 0 0
0 0 2 4 4 0
0 0 0 2 0 0
0 0 1 2 4 0
Sample Output

19
Explanation

 contains the following hourglasses:

1 1 1   1 1 0   1 0 0   0 0 0
  1       0       0       0
1 1 1   1 1 0   1 0 0   0 0 0

0 1 0   1 0 0   0 0 0   0 0 0
  1       1       0       0
0 0 2   0 2 4   2 4 4   4 4 0

1 1 1   1 1 0   1 0 0   0 0 0
  0       2       4       4
0 0 0   0 0 2   0 2 0   2 0 0

0 0 2   0 2 4   2 4 4   4 4 0
  0       0       2       0
0 0 1   0 1 2   1 2 4   2 4 0
The hourglass with the maximum sum () is:

2 4 4
  2
1 2 4
```
------
### Solution
```python
# Initialize the 6x6 array
    arr = []
    for _ in range(6):
        arr.append(list(map(int, input().rstrip().split())))

    # Initialize maximum sum to a very small value
    max_hourglass_sum = -63  # Minimum possible value for an hourglass (-9 * 7)

    # Loop through the array to calculate hourglass sums
    for i in range(4):  # Rows (0 to 3, inclusive)
        for j in range(4):  # Columns (0 to 3, inclusive)
            # Calculate the hourglass sum for the current position
            top = arr[i][j] + arr[i][j + 1] + arr[i][j + 2]
            middle = arr[i + 1][j + 1]
            bottom = arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2]
            hourglass_sum = top + middle + bottom

            # Update maximum hourglass sum
            if hourglass_sum > max_hourglass_sum:
                max_hourglass_sum = hourglass_sum

    # Print the maximum hourglass sum
    print(max_hourglass_sum)

```
