```sql
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.

Input Format

The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude.

    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
  ```
  
# Solution
  ```sql
  WITH CTE AS (
    SELECT 
        LAT_N, 
        ROW_NUMBER() OVER (ORDER BY Lat_N) AS RowAsc, 
        ROW_NUMBER() OVER (ORDER BY LAT_N DESC) AS RowDesc,
        COUNT(*) OVER() AS TotalRows
    FROM Station
)
SELECT 
    cast(round(AVG(LAT_N * 1.0),4) as decimal(10,4)) AS Median
FROM CTE
WHERE RowAsc = RowDesc
   OR RowAsc + 1 = RowDesc;
  ```

