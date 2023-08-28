/* Provide a query showing only the Employees who are "Sales Agents". */

SELECT *
FROM Employee e 
WHERE e.Title LIKE "%Sales Support Agent%"
