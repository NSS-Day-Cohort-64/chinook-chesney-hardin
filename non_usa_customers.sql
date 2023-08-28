/* Provide a query showing Customers who are not in the US. The resultant table should include:
Customer's full name
Customer Id,
Customer's country */

SELECT (c.FirstName || " " || c.LastName) AS FullName,
c.LastName, c.CustomerId, c.Country
FROM Customer c
WHERE c.Country != "USA"
