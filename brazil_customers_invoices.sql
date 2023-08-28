/* Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
Customer's full name
Invoice Id,
Date of the invoice
Billing country */

SELECT (c.FirstName || " " || c.LastName) AS FullName, 
i.InvoiceId, 
i.InvoiceDate, 
i.BillingCountry
FROM Invoice i
JOIN Customer c
WHERE i.CustomerId = c.CustomerId AND
c.Country LIKE "%Brazil%"