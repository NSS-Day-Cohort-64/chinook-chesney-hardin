/* Provide a query that shows the most purchased track(s) of 2013. */

SELECT COUNT(il.InvoiceLineId) AS Purchases,
t.Name
FROM InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY t.TrackId
ORDER BY Purchases DESC

/* SELECT Name, Purchases
FROM
(SELECT COUNT(il.InvoiceLineId) AS Purchases,
t.Name
FROM InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
WHERE i.InvoiceDate LIKE "%2013%"
GROUP BY t.TrackId
ORDER BY Purchases DESC)
WHERE Purchases = MAX(Purchases) */

