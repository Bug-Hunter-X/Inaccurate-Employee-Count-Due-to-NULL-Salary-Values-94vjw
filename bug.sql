```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query intends to count the number of employees in the 'Sales' department who earn more than \$100000. However, if the `salary` column allows `NULL` values, this query might produce inaccurate results.  Rows where `salary` is `NULL` will be excluded, even though they might belong to the 'Sales' department. This can lead to an undercount.