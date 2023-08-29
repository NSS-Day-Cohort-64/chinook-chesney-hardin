/* Provide a query that shows the top 5 most purchased tracks over all.*/

SELECT COUNT(il.InvoiceLineId) AS Purchases,
t.Name
FROM InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
GROUP BY t.TrackId
ORDER BY Purchases DESC
LIMIT 5
