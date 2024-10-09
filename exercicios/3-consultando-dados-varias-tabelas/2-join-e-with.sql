-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tracks.TrackId,
tracks.Name,
albums.Title,
artists.Name
FROM
tracks 
inner join albums on tracks.AlbumId = albums.AlbumId
inner join artists on artists.ArtistId = albums.ArtistId;

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

WITH musica AS (
SELECT
tracks.TrackId AS ID,
tracks.Name AS musica,
albums.Title AS album,
artists.Name AS artista
FROM
tracks 
inner join albums on tracks.AlbumId = albums.AlbumId
inner join artists on artists.ArtistId = albums.ArtistId
)

select artista, COUNT(musica)
from musica
where artista LIKE 'Caetano Veloso'