/* Provide a query that shows all the Tracks, 
but displays no IDs. The resultant table should include:
Album name
Media type
Genre
 */

SELECT t.Name AS Track, 
al.Title AS Album, 
mt.Name AS MediaType, 
g.Name AS Genre,
t.Composer,
t.Milliseconds,
t.Bytes,
t.UnitPrice
FROM Track t 
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId

