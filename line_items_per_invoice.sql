/* Looking at the InvoiceLine table, provide a query that 
COUNTs the number of line items for each Invoice. */


SELECT i.InvoiceId, Count(i.InvoiceLineId) AS LineItems
FROM InvoiceLine i 
GROUP BY i.InvoiceId


