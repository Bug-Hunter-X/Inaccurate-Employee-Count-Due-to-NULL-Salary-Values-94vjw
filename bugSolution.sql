```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```

This revised query explicitly includes rows where the `salary` is `NULL` using the `OR salary IS NULL` condition. This ensures that all employees in the 'Sales' department, regardless of whether their salary is recorded, are included in the count.  Alternatively, using `COALESCE` provides a cleaner approach:

```sql
SELECT COUNT(*) FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This replaces `NULL` salary values with 0, ensuring they are not included in the count (assuming a 0 salary does not meet the criteria).  Choose the solution that best fits your data and desired outcome.