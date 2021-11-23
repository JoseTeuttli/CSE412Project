--Zoom link: https://asu.zoom.us/j/86794906162
--To start server windows key -> sql shell
--default for everything except password which is password
--connect with dbeaver with username/database called postgres and password=password


--Drops all tables
DROP TABLE public.album cascade;
DROP TABLE public.album_made_artist cascade;
DROP TABLE public.artist cascade;
DROP TABLE public.genre cascade;
DROP TABLE public.song_is_genre cascade;
DROP TABLE public.like_song cascade;
DROP TABLE public.owns cascade;
DROP TABLE public.song_part_of_album cascade;
DROP TABLE public.part_of_playlist cascade;
DROP TABLE public.playlist cascade;
DROP TABLE public.profile cascade;
DROP TABLE public.song cascade;
DROP TABLE public.song_made_artist cascade;

--Create relations
CREATE TABLE public.profile (
	profileid int NOT NULL,
	CONSTRAINT profile_pk PRIMARY KEY (profileid)
);
CREATE TABLE public.playlist (
	playlistid int NOT NULL,
	playlist_name text NOT NULL,
	CONSTRAINT playlist_pk PRIMARY KEY (playlistid)
);
CREATE TABLE public.song (
	songid int NOT NULL,
	song_name text NOT NULL,
	date_created date NOT NULL,
	CONSTRAINT song_pk PRIMARY KEY (songid)
);
CREATE TABLE public.artist (
	artistid int NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT artist_pk PRIMARY KEY (artistid)
);
CREATE TABLE public.album (
	albumid int NOT NULL,
	date_created date NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT album_pk PRIMARY KEY (albumid)
);
CREATE TABLE public.genre (
	"name" text NOT NULL,
	CONSTRAINT genre_pk PRIMARY KEY ("name")
);
CREATE TABLE public.owns (
	profileid int NOT NULL,
	playlistid int NOT NULL,
	date_created date NOT NULL,
	CONSTRAINT owns_pk PRIMARY KEY (playlistid,profileid),
	CONSTRAINT owns_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT owns_fk_1 FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.part_of_playlist (
	playlistid int NOT NULL,
	songid int NOT NULL,
	CONSTRAINT part_of_playlist_pk PRIMARY KEY (playlistid,songid),
	CONSTRAINT part_of_playlist_fk FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT part_of_playlist_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.like_song (
	profileid int NOT NULL,
	songid int NOT NULL,
	CONSTRAINT like_song_pk PRIMARY KEY (profileid,songid),
	CONSTRAINT like_song_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT like_song_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.song_made_artist (
	songid int NOT NULL,
	artistid int NOT NULL,
	CONSTRAINT song_made_artist_pk PRIMARY KEY (songid,artistid),
	CONSTRAINT song_made_artist_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT song_made_artist_fk_1 FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.album_made_artist (
	albumid int NOT NULL,
	artistid int NOT NULL,
	CONSTRAINT album_made_artist_artist_pk PRIMARY KEY (albumid,artistid),
	CONSTRAINT album_made_artist_artist_fk FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT album_made_artist_artist_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.song_part_of_album (
	songid int NOT NULL,
	albumid int NOT NULL,
	CONSTRAINT song_part_of_album_pk PRIMARY KEY (songid,albumid),
	CONSTRAINT song_part_of_album_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT song_part_of_album_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE public.song_is_genre (
	songid int NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT song_song_is_genre_pk PRIMARY KEY (songid,"name"),
	CONSTRAINT song_song_is_genre_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT song_song_is_genre_fk_1 FOREIGN KEY ("name") REFERENCES public.genre("name") ON DELETE CASCADE ON UPDATE CASCADE
);


--Removes all data from tables
truncate table song_is_genre cascade;
truncate table album_made_artist cascade;
truncate table song_made_artist cascade;
truncate table song cascade;
truncate table artist cascade;
truncate table album cascade;
truncate table genre cascade;

--Add genres to database
insert into genre values ('Country');
insert into genre values ('Electronica');
insert into genre values ('Gospel');
insert into genre values ('Jazz');
insert into genre values ('Latin');
insert into genre values ('Pop');
insert into genre values ('R&B');
insert into genre values ('Rap');
insert into genre values ('Reggae');
insert into genre values ('Rock');

--Add 10 artists to database
insert into artist values (1, 'Destiny''s Child');
insert into artist values (2, 'Santana');
insert into artist values (3, 'Savage Garden');
insert into artist values (4, 'Madonna');
insert into artist values (5, 'Aguilera, Christina');
insert into artist values (6, 'Janet');
insert into artist values (7, 'Iglesias, Enrique');
insert into artist values (8, 'Sisqo');
insert into artist values (9, 'Lonestar');
insert into artist values (10, 'N''Sync');
select * from artist;

--Add 10 albums to database
insert into album values (1, '2000-08-29', 'Survivor');
insert into album values (2, '1999-06-15', 'Supernatural');
insert into album values (3, '1999-09-28', 'Affirmation');
insert into album values (4, '2000-08-21', 'Music');
insert into album values (5, '2000-07-11', 'Christina Aguilera');
insert into album values (6, '2000-05-23', 'All For You');
insert into album values (7, '2000-02-29', 'Enrique');
insert into album values (8, '1999-11-30', 'Unleash The Dragon');
insert into album values (9, '1999-06-01', 'Lonely Grill');
insert into album values (10, '2000-03-21', 'No Strings Attached');


--Add 10 songs to database
insert into song values (1, 'Independent Women Part I', '2000-08-29');
insert into song values (2, 'Maria, Maria', '1999-06-15');
insert into song values (3, 'I Knew I Loved You', '1999-09-28');
insert into song values (4, 'Music', '2000-08-21');
insert into song values (5, 'Come On Over Baby (All I Want Is You)', '2000-07-11');
insert into song values (6, 'Doesn''t Really Matter', '2000-05-23');
insert into song values (7, 'Be With You', '2000-02-29');
insert into song values (8, 'Incomplete', '1999-11-30');
insert into song values (9, 'Amazed', '1999-06-01');
insert into song values (10, 'It''s Gonna Be Me', '2000-03-21');

--Add 10 relations between artist and album
insert into album_made_artist values(1, 1);
insert into album_made_artist values(2, 2);
insert into album_made_artist values(3, 3);
insert into album_made_artist values(4, 4);
insert into album_made_artist values(5, 5);
insert into album_made_artist values(6, 6);
insert into album_made_artist values(7, 7);
insert into album_made_artist values(8, 8);
insert into album_made_artist values(9, 9);
insert into album_made_artist values(10, 10);

--Add 10 relations between artist and song
insert into song_made_artist values(1, 1);
insert into song_made_artist values(2, 2);
insert into song_made_artist values(3, 3);
insert into song_made_artist values(4, 4);
insert into song_made_artist values(5, 5);
insert into song_made_artist values(6, 6);
insert into song_made_artist values(7, 7);
insert into song_made_artist values(8, 8);
insert into song_made_artist values(9, 9);
insert into song_made_artist values(10, 10);

--Add genre relations
insert into song_is_genre values(1,'Rock');
insert into song_is_genre values(2,'Rock');
insert into song_is_genre values(3,'Rock');
insert into song_is_genre values(4,'Rock');
insert into song_is_genre values(5,'Rock');
insert into song_is_genre values(6,'Rock');
insert into song_is_genre values(7,'Latin');
insert into song_is_genre values(8,'Rock');
insert into song_is_genre values(9,'Country');
insert into song_is_genre values(10,'Rock');

--Demo of select statements on tables
--Select all from artist
select * from artist;
--Select all from song
select * from song;
--Select all from song_made_artist
select * from song_made_artist;

--Show insert command that inserts an artist
select name from artist where name='Smith';
insert into artist values(11, 'Smith');
select name from artist where name='Smith';

--Show update command
select name from artist where artistid=1;
update artist set name='Test' where artistid=1;
select name from artist where artistid=1;

--Show delete command that deletes a song
select song_name from song where song_name='Music';
delete from song where song_name='Music';
select song_name from song where song_name='Music';

--Commands that show things
--Show all songs that have genre rock
select song_name from song where songid in (select songid from song_is_genre where name='Rock');
--Show all songs made by x artist
select song_name from song where songid in (select songid from song_made_artist where artistid in (select artistid from artist where name='Santana'));
--Show the artist that made the song 'Music'
select artist.name from artist where artistid in (select artistid from song_made_artist where songid in (select songid from song where song_name='Amazed'));
--Show the artist who made the album 'Survivor'
select artist.name from artist where artistid in (select artistid from album_made_artist where albumid in (select albumid from album where name='Survivor'));








--Add profile

--Add playlist
--Add songs to playlist
--Show all songs in playlistid


--Like songs
--Show all songs liked by profileid



Data for demo
id	date		name				track									artist						Genre
int	YYYY-MM-DD	text				text									text						text
1	2000-08-29	Survivor			Independent Women Part I				Destiny's Child				Rock
2	1999-06-15	Supernatural		Maria, Maria							Santana						Rock
3	1999-09-28	Affirmation			I Knew I Loved You						Savage Garden				Rock
4	2000-08-21	Music				Music									Madonna						Rock
5	2000-07-11	Christina Aguilera	Come On Over Baby (All I Want Is You)	Aguilera, Christina			Rock
6	2000-05-23	All For You			Doesn't Really Matter					Janet						Rock
7	2000-02-29	Enrique				Be With You								Iglesias, Enrique			Latin
8	1999-11-30	Unleash The Dragon	Incomplete								Sisqo						Rock
9	1999-06-01	Lonely Grill		Amazed									Lonestar					Country
10	2000-03-21	No Strings Attached	It's Gonna Be Me						N'Sync						Rock
