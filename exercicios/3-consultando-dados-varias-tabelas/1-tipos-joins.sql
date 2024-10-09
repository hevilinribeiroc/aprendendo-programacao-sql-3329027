-- Crie uma consulta para realizar um left join com as tabelas "albums" e "artists"
select *
from albums 
LEFT JOIN artists ON albums.ArtistID = artists.ArtistID