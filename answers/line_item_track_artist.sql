-- Provide a query that includes the purchased track name AND artist name 
-- with each invoice line item.

SELECT il.*, t.Name AS "Track Name", a.Name AS "Artist Name"
FROM InvoiceLine il, Track t, Artist a, Album al
WHERE il.TrackId = t.TrackId
AND t.AlbumId = al.AlbumId
AND al.ArtistId = a.ArtistId