-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table.

SELECT 
    p.Name AS "Playlist",
    COUNT(pt.TrackId) AS "Number of tracks"
FROM Playlist p, PlaylistTrack pt
WHERE p.PlaylistId = pt.PlaylistId
GROUP BY p.Name