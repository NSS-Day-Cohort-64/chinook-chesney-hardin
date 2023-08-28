/* Provide a query that shows total sales made by each sales agent. 
The resultant table should include:
Employee full name
Total sales for each employee (all time) */

SELECT (e.FirstName || " " || e.LastName) AS EmployeeFullName, 
SUM(i.Total) AS TotalSales
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON e.EmployeeId = c.SupportRepId
GROUP By e.EmployeeId
