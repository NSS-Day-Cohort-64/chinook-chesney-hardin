/* Which sales agent made the most in sales in 2009? */

SELECT (e.FirstName || " " || e.LastName) AS EmployeeFullName, 
SUM(i.Total) AS TotalSales
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON e.EmployeeId = c.SupportRepId
WHERE i.InvoiceDate LIKE "%2009%"
GROUP By e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1


