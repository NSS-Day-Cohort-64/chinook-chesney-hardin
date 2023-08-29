/* Provide a query that shows the top 3 best selling artists.*/

SELECT SUM(i.Total) AS TotalSales,
ar.Name
FROM InvoiceLine il 
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId
GROUP BY ar.ArtistId
ORDER BY TotalSales DESC
LIMIT 3

