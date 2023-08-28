/* Provide a query that shows the total number of tracks in each playlist. 
The resultant table should include:
Playlist name
Total number of tracks on each playlist */

SELECT p.Name AS PlaylistName, SUM(pt.TrackId) AS TotalTracks
FROM Playlist p 
JOIN PlaylistTrack pt ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId
