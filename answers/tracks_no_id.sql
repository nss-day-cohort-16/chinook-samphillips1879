-- Provide a query that shows all the Tracks, but displays no IDs. The result 
-- should include the Album name, Media type and Genre.

SELECT 
    al.Title AS "Album",
    t.Name AS "Track Name", 
    mt.Name AS "Media Type",
    g.Name AS "Genre"
FROM Track t, Album al, MediaType mt, Genre g
WHERE t.AlbumId = al.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.GenreId = g.GenreId
GROUP BY al.Title