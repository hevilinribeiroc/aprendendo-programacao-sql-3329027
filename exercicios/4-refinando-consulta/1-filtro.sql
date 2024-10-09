-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT
tracks.TrackId AS ID,
tracks.Name AS musica,
albums.Title AS album,
artists.Name AS artista
FROM
tracks 
inner join albums on tracks.AlbumId = albums.AlbumId
inner join artists on artists.ArtistId = albums.ArtistId
WHERE 
artista LIKE '%Nação%' and
album NOT LIKE '%Da Lama Ao Caos%'
