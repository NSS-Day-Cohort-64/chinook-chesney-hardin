/* Provide a query that shows the most purchased Media Type.*/


SELECT MAX(TotalSales),
Name 
FROM
(SELECT SUM(i.Total) AS TotalSales,
mt.Name
FROM InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.MediaTypeId
ORDER BY TotalSales DESC)

