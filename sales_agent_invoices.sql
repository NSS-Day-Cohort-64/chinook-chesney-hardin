/* Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include:
Sales Agent's full name
Invoice ID */

SELECT (e.FirstName || " " || e.LastName) AS FullName, 
i.InvoiceId
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON e.EmployeeId = c.SupportRepId
