/* Provide a query that shows each Invoice line item, 
with the name of the track that was purchase, 
and the name of the artist. */

SELECT i.InvoiceLineId, t.Name AS Track, ar.Name AS Artist
FROM InvoiceLine i 
JOIN Track t ON i.TrackId = t.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId


