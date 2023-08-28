/* Provide a query that shows the total number of invoices per country. */

SELECT COUNT(i.InvoiceId) AS NumberOfInvoices, i.BillingCountry
FROM Invoice i 
GROUP BY i.BillingCountry
