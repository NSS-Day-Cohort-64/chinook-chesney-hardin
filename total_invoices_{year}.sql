/* How many Invoices were there in 2009 and 2011? */

SELECT COUNT(i.InvoiceId) AS InvoiceCountFor2009And2011
FROM Invoice i 
WHERE i.InvoiceDate LIKE "%2009%" OR i.InvoiceDate LIKE "%2011%"

SELECT COUNT(i.InvoiceId) AS InvoiceCountFor2009
FROM Invoice i 
WHERE i.InvoiceDate LIKE "%2009%"

SELECT COUNT(i.InvoiceId) AS InvoiceCountFor2011
FROM Invoice i 
WHERE i.InvoiceDate LIKE "%2011%"
