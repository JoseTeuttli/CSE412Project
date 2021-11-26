return will be
song_name	album.name	artist.name	song.created_date	genre.name

--searching by album
select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
where album.albumid=album_made_artist.albumid
and artist.artistid=album_made_artist.artistid
and song.songid=song_part_of_album.songid
and album.albumid=song_part_of_album.albumid
and song.songid=song_made_artist.songid
and artist.artistid=song_made_artist.artistid
and song.songid=song_is_genre.songid
and album.name=%s

--searching by artist
select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
where album.albumid=album_made_artist.albumid
and artist.artistid=album_made_artist.artistid
and song.songid=song_part_of_album.songid
and album.albumid=song_part_of_album.albumid
and song.songid=song_made_artist.songid
and artist.artistid=song_made_artist.artistid
and song.songid=song_is_genre.songid
and artist.name=%s