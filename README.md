# Inaccurate Employee Count Due to NULL Salary Values

This repository demonstrates a common SQL error where `NULL` values in a column can lead to inaccurate results when performing aggregate functions like `COUNT(*)`.  The provided SQL query attempts to count employees meeting specific criteria, but it incorrectly excludes employees with `NULL` salaries.

The `bug.sql` file contains the flawed query, while `bugSolution.sql` provides the corrected version that handles `NULL` values appropriately. This example highlights the importance of considering `NULL` values when writing SQL queries.