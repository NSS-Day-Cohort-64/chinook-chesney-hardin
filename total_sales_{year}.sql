/* What are the respective total sales for each of those years? */


SELECT SUM(i.Total) AS InvoiceTotalFor2009
FROM Invoice i 
WHERE i.InvoiceDate LIKE "%2009%"

SELECT SUM(i.Total) AS InvoiceTotalFor2011
FROM Invoice i 
WHERE i.InvoiceDate LIKE "%2011%"

