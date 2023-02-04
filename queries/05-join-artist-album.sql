-- Join artists on albums, pulling artists.name as artist_name
-- albums.name as album_name and albums.release_year
-- sort by artists.name ascending
SELECT artists.name AS artist_name, albums.name AS album_name, albums.release_year AS release_year
FROM artists
JOIN albums ON artists.id = albums.artist_id
ORDER BY artists.name ASC;