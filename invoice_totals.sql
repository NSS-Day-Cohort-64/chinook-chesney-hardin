/* Provide a query that shows the customers and employees associated 
with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name */

SELECT (e.FirstName || " " || e.LastName) AS AgentFullName, 
i.Total AS InvoiceTotal,
c.Country AS CustomerCountry,
(c.FirstName || " " || c.LastName) AS CustomerFullName
FROM Invoice i 
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e 
ON e.EmployeeId = c.SupportRepId

