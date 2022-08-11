## Query to find nth value in data

-- Implementation ROW_NUMBER to returns 5th row of the table

```
SELECT *
FROM (
  SELECT ROW_NUMBER() OVER (ORDER BY column name) AS row_num
             col2,
             col3,
             col4
  FROM table
) AS sub
WHERE row_num = 5;
```
