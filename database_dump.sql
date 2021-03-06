toc.dat                                                                                             0000600 0004000 0002000 00000043225 14151505020 0014436 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       	        
        
    y            postgres    14.0    14.0 =    N
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         O
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         P
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         Q
           1262    13754    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false         R
           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3409         S
           0    0 
   SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    5                     3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false         T
           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2         ╓            1259    17938    album    TABLE     t   CREATE TABLE public.album (
    albumid integer NOT NULL,
    date_created date NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.album;
       public         heap    postgres    false         ▄            1259    18012    album_made_artist    TABLE     g   CREATE TABLE public.album_made_artist (
    albumid integer NOT NULL,
    artistid integer NOT NULL
);
 %   DROP TABLE public.album_made_artist;
       public         heap    postgres    false         ╒            1259    17931    artist    TABLE     V   CREATE TABLE public.artist (
    artistid integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.artist;
       public         heap    postgres    false         ╫            1259    17945    genre    TABLE     6   CREATE TABLE public.genre (
    name text NOT NULL
);
    DROP TABLE public.genre;
       public         heap    postgres    false         ┌            1259    17982 	   like_song    TABLE     _   CREATE TABLE public.like_song (
    profileid integer NOT NULL,
    songid integer NOT NULL
);
    DROP TABLE public.like_song;
       public         heap    postgres    false         ┘            1259    17967    part_of_playlist    TABLE     g   CREATE TABLE public.part_of_playlist (
    playlistid integer NOT NULL,
    songid integer NOT NULL
);
 $   DROP TABLE public.part_of_playlist;
       public         heap    postgres    false         ╙            1259    17917    playlist    TABLE     c   CREATE TABLE public.playlist (
    playlistid integer NOT NULL,
    playlist_name text NOT NULL
);
    DROP TABLE public.playlist;
       public         heap    postgres    false         ╥            1259    17912    profile    TABLE     \   CREATE TABLE public.profile (
    profileid integer NOT NULL,
    username text NOT NULL
);
    DROP TABLE public.profile;
       public         heap    postgres    false         ╪            1259    17952    profile_made_playlist    TABLE     Å   CREATE TABLE public.profile_made_playlist (
    profileid integer NOT NULL,
    playlistid integer NOT NULL,
    date_created date NOT NULL
);
 )   DROP TABLE public.profile_made_playlist;
       public         heap    postgres    false         ╘            1259    17924    song    TABLE     w   CREATE TABLE public.song (
    songid integer NOT NULL,
    song_name text NOT NULL,
    date_created date NOT NULL
);
    DROP TABLE public.song;
       public         heap    postgres    false         ▐            1259    18042 
   song_is_genre    TABLE     [   CREATE TABLE public.song_is_genre (
    songid integer NOT NULL,
    name text NOT NULL
);
 !   DROP TABLE public.song_is_genre;
       public         heap    postgres    false         █            1259    17997    song_made_artist    TABLE     e   CREATE TABLE public.song_made_artist (
    songid integer NOT NULL,
    artistid integer NOT NULL
);
 $   DROP TABLE public.song_made_artist;
       public         heap    postgres    false         ▌            1259    18027    song_part_of_album    TABLE     f   CREATE TABLE public.song_part_of_album (
    songid integer NOT NULL,
    albumid integer NOT NULL
);
 &   DROP TABLE public.song_part_of_album;
       public         heap    postgres    false         C
          0    17938    album 
   TABLE DATA           <   COPY public.album (albumid, date_created, name) FROM stdin;
    public          postgres    false    214       3395.dat I
          0    18012    album_made_artist 
   TABLE DATA           >   COPY public.album_made_artist (albumid, artistid) FROM stdin;
    public          postgres    false    220       3401.dat B
          0    17931    artist 
   TABLE DATA           0   COPY public.artist (artistid, name) FROM stdin;
    public          postgres    false    213       3394.dat D
          0    17945    genre 
   TABLE DATA           %   COPY public.genre (name) FROM stdin;
    public          postgres    false    215       3396.dat G
          0    17982 	   like_song 
   TABLE DATA           6   COPY public.like_song (profileid, songid) FROM stdin;
    public          postgres    false    218       3399.dat F
          0    17967    part_of_playlist 
   TABLE DATA           >   COPY public.part_of_playlist (playlistid, songid) FROM stdin;
    public          postgres    false    217       3398.dat @
          0    17917    playlist 
   TABLE DATA           =   COPY public.playlist (playlistid, playlist_name) FROM stdin;
    public          postgres    false    211       3392.dat ?
          0    17912    profile 
   TABLE DATA           6   COPY public.profile (profileid, username) FROM stdin;
    public          postgres    false    210       3391.dat E
          0    17952    profile_made_playlist 
   TABLE DATA           T   COPY public.profile_made_playlist (profileid, playlistid, date_created) FROM stdin;
    public          postgres    false    216       3397.dat A
          0    17924    song 
   TABLE DATA           ?   COPY public.song (songid, song_name, date_created) FROM stdin;
    public          postgres    false    212       3393.dat K
          0    18042 
   song_is_genre 
   TABLE DATA           5   COPY public.song_is_genre (songid, name) FROM stdin;
    public          postgres    false    222       3403.dat H
          0    17997    song_made_artist 
   TABLE DATA           <   COPY public.song_made_artist (songid, artistid) FROM stdin;
    public          postgres    false    219       3400.dat J
          0    18027    song_part_of_album 
   TABLE DATA           =   COPY public.song_part_of_album (songid, albumid) FROM stdin;
    public          postgres    false    221       3402.dat í           2606    18016 -   album_made_artist album_made_artist_artist_pk 
   CONSTRAINT     z   ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_pk PRIMARY KEY (albumid, artistid);
 W   ALTER TABLE ONLY public.album_made_artist DROP CONSTRAINT album_made_artist_artist_pk;
       public            postgres    false    220    220         ò           2606    17944    album album_pk 
   CONSTRAINT     Q   ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pk PRIMARY KEY (albumid);
 8   ALTER TABLE ONLY public.album DROP CONSTRAINT album_pk;
       public            postgres    false    214         ô           2606    17937    artist artist_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pk PRIMARY KEY (artistid);
 :   ALTER TABLE ONLY public.artist DROP CONSTRAINT artist_pk;
       public            postgres    false    213         ù           2606    17951    genre genre_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pk PRIMARY KEY (name);
 8   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pk;
       public            postgres    false    215         ¥           2606    17986    like_song like_song_pk 
   CONSTRAINT     c   ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_pk PRIMARY KEY (profileid, songid);
 @   ALTER TABLE ONLY public.like_song DROP CONSTRAINT like_song_pk;
       public            postgres    false    218    218         Ö           2606    17956    profile_made_playlist owns_pk 
   CONSTRAINT     n   ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_pk PRIMARY KEY (playlistid, profileid);
 G   ALTER TABLE ONLY public.profile_made_playlist DROP CONSTRAINT owns_pk;
       public            postgres    false    216    216         ¢           2606    17971 $   part_of_playlist part_of_playlist_pk 
   CONSTRAINT     r   ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_pk PRIMARY KEY (playlistid, songid);
 N   ALTER TABLE ONLY public.part_of_playlist DROP CONSTRAINT part_of_playlist_pk;
       public            postgres    false    217    217         Å           2606    17923    playlist playlist_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pk PRIMARY KEY (playlistid);
 >   ALTER TABLE ONLY public.playlist DROP CONSTRAINT playlist_pk;
       public            postgres    false    211         ì           2606    17916    profile profile_pk 
   CONSTRAINT     W   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pk PRIMARY KEY (profileid);
 <   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pk;
       public            postgres    false    210         ƒ           2606    18001 $   song_made_artist song_made_artist_pk 
   CONSTRAINT     p   ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_pk PRIMARY KEY (songid, artistid);
 N   ALTER TABLE ONLY public.song_made_artist DROP CONSTRAINT song_made_artist_pk;
       public            postgres    false    219    219         ú           2606    18031 (   song_part_of_album song_part_of_album_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_pk PRIMARY KEY (songid, albumid);
 R   ALTER TABLE ONLY public.song_part_of_album DROP CONSTRAINT song_part_of_album_pk;
       public            postgres    false    221    221         æ           2606    17930    song song_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pk PRIMARY KEY (songid);
 6   ALTER TABLE ONLY public.song DROP CONSTRAINT song_pk;
       public            postgres    false    212         Ñ           2606    18048 #   song_is_genre song_song_is_genre_pk 
   CONSTRAINT     k   ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_pk PRIMARY KEY (songid, name);
 M   ALTER TABLE ONLY public.song_is_genre DROP CONSTRAINT song_song_is_genre_pk;
       public            postgres    false    222    222         «           2606    18017 -   album_made_artist album_made_artist_artist_fk 
   FK CONSTRAINT     ╕   ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_fk FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.album_made_artist DROP CONSTRAINT album_made_artist_artist_fk;
       public          postgres    false    220    3219    213         »           2606    18022 /   album_made_artist album_made_artist_artist_fk_1 
   FK CONSTRAINT     ╖   ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.album_made_artist DROP CONSTRAINT album_made_artist_artist_fk_1;
       public          postgres    false    220    3221    214         ¬           2606    17987    like_song like_song_fk 
   FK CONSTRAINT     ñ   ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.like_song DROP CONSTRAINT like_song_fk;
       public          postgres    false    3213    210    218         ½           2606    17992    like_song like_song_fk_1 
   FK CONSTRAINT     ¥   ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.like_song DROP CONSTRAINT like_song_fk_1;
       public          postgres    false    3217    212    218         ª           2606    17957    profile_made_playlist owns_fk 
   FK CONSTRAINT     ½   ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.profile_made_playlist DROP CONSTRAINT owns_fk;
       public          postgres    false    3213    210    216         º           2606    17962    profile_made_playlist owns_fk_1 
   FK CONSTRAINT     ░   ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_fk_1 FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.profile_made_playlist DROP CONSTRAINT owns_fk_1;
       public          postgres    false    216    211    3215         ¿           2606    17972 $   part_of_playlist part_of_playlist_fk 
   FK CONSTRAINT     ╡   ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_fk FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.part_of_playlist DROP CONSTRAINT part_of_playlist_fk;
       public          postgres    false    217    211    3215         ⌐           2606    17977 &   part_of_playlist part_of_playlist_fk_1 
   FK CONSTRAINT     ½   ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.part_of_playlist DROP CONSTRAINT part_of_playlist_fk_1;
       public          postgres    false    217    3217    212         ¼           2606    18002 $   song_made_artist song_made_artist_fk 
   FK CONSTRAINT     ⌐   ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.song_made_artist DROP CONSTRAINT song_made_artist_fk;
       public          postgres    false    219    212    3217         ¡           2606    18007 &   song_made_artist song_made_artist_fk_1 
   FK CONSTRAINT     ▒   ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_fk_1 FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.song_made_artist DROP CONSTRAINT song_made_artist_fk_1;
       public          postgres    false    213    3219    219         ░           2606    18032 (   song_part_of_album song_part_of_album_fk 
   FK CONSTRAINT     ¡   ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.song_part_of_album DROP CONSTRAINT song_part_of_album_fk;
       public          postgres    false    212    221    3217         ▒           2606    18037 *   song_part_of_album song_part_of_album_fk_1 
   FK CONSTRAINT     ▓   ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.song_part_of_album DROP CONSTRAINT song_part_of_album_fk_1;
       public          postgres    false    214    3221    221         ▓           2606    18049 #   song_is_genre song_song_is_genre_fk 
   FK CONSTRAINT     ¿   ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.song_is_genre DROP CONSTRAINT song_song_is_genre_fk;
       public          postgres    false    3217    222    212         │           2606    18054 %   song_is_genre song_song_is_genre_fk_1 
   FK CONSTRAINT     º   ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_fk_1 FOREIGN KEY (name) REFERENCES public.genre(name) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.song_is_genre DROP CONSTRAINT song_song_is_genre_fk_1;
       public          postgres    false    222    215    3223                                                                                                                                                                                                                                                                                                                                                                                   3395.dat                                                                                            0000600 0004000 0002000 00000021270 14151505020 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2018-05-25	Shawn Mendes
2	2020-05-29	Emmanuel
3	2019-07-09	Everything Changed...
4	2019-06-23	No.6 Collaborations Project
5	2019-07-05	Hollywood's Bleeding
6	2019-05-22	We Love You Tecca
7	2020-08-30	Love Goes
8	2018-05-11	7
9	2019-03-29	When We All Fall Asleep, Where Do We Go?
10	2019-05-31	Callaita
11	2019-07-26	Carte Blanche
12	2019-05-17	Divinely Uninspired to a Hellish
13	2019-04-19	Suenos
14	2019-06-15	The Best In The World Pack
15	2019-06-28	Indigo
16	2019-06-28	Oasis
17	2018-12-14	Spider-Man: Into the Spider-Verse
18	2019-06-07	Lalala
19	2019-04-19	Cuz I Love You
20	2021-04-28	Introducing MEDUZA
21	2019-05-24	Famouz
22	2019-09-25	Epico
23	2019-08-30	The Kids Are Coming
24	2019-09-18	YOU
25	2019-06-07	Con Calma & Mis Grandes Exitos
26	2019-12-06	World War Joy...Push My Luck
27	2019-02-08	thank u, next
28	2019-08-16	So Much Fun
29	2020-08-28	Smile
30	2019-04-20	The Martin Garrix Experience
31	2014-12-15	Sucker
32	2017-03-30	13 Reasons Why 
33	1986-06-20	Higher Love
34	2019-08-23	Lover
35	2018-09-27	A Star Is Born Soundtrack
36	2019-04-05	Free Spirit
37	2019-03-28	Con Altura
38	2020-05-04	One Thing Right (Remixes)
39	2019-03-22	Te Robare
40	2019-02-02	Marshmello Fortnite Extended Set
41	2019-04-02	Call You Mine - The Remixes
42	2001-04-25	Survivor
43	1999-06-15	Supernatural
44	1999-11-09	Affirmation
45	2000-09-08	Music
46	1999-08-24	Christina Aguilera
47	2001-04-24	All For You
48	1999-07-27	The Writing's On The Wall
49	1999-11-23	Enrique
50	1999-11-30	Unleash The Dragon
51	1999-06-01	Lonely Grill
52	2000-04-21	No Strings Attached
53	1999-10-19	Everything You Want
54	1999-07-28	Human Clay
55	2001-07-07	Aaliyah
56	2000-05-23	Mad Season
57	1999-11-02	Rainbow
58	1999-11-09	Breathe
59	2000-04-25	Fear Of Flying
60	2001-01-23	It Was All A Dream
61	2000-04-25	The Heat
62	1999-09-14	Marc Anthony
63	2000-09-26	Revelation
64	2000-02-08	The Better Life
65	1998-11-17	My Love Is Your Love
66	2000-04-18	My Name Is Joe
67	1999-11-09	Get It On... Tonite
68	2000-05-23	The Marshall Mathers LP
69	2000-04-04	Can't Take Me Home
70	2000-10-31	Gotta Tell You
71	1999-06-01	Blaque
72	1999-06-22	Da Real World
73	1999-07-01	On How Life Is
74	2000-08-22	Love Crimes
75	1999-05-18	Millennium
76	2000-05-16	The Madding Crowd
77	1999-11-12	All the Way... A Decade of Song
78	1999-06-01	Enema Of The State
79	1998-10-01	Blue (Da Ba Dee)
80	2000-11-21	Mama's Gun
81	2000-06-27	Country Grammar
82	2000-06-20	Welcome II Nextasy
83	1999-11-16	Faith: A Holiday Album
84	2000-02-15	Hear My Cry
85	2000-05-03	Oops!... I Did It Again
86	2019-09-25	Black & Blue
87	2000-08-11	Songs from an American Movie Vol. One: Learning How to Smile
88	2000-09-10	Rule 3:36
89	2001-01-30	I Need You
90	1999-06-08	Astro Lounge
91	2000-08-31	The Dynasty
92	1999-09-28	J.E. Heartbreak
93	1999-08-24	Title Of Record
94	1998-02-10	Vuelve
95	2000-09-26	Let's Get Ready
96	2000-05-16	Sooner Or Later
97	1999-01-12	...Baby One More Time
98	1999-11-23	Blue
99	1999-06-08	Californication
100	2000-10-17	Nothing But Drama
101	2000-09-12	Maroon
102	2000-05-02	Goodfellas
103	1999-09-24	Brand New Day
104	1999-12-28	Vol. 3... Life And Times Of S. Carter
105	1998-08-18	Devil Without a Cause
106	1999-11-02	There Is Nothing Left To Lose
107	1999-08-31	Fly
108	2000-01-25	III
109	2000-09-26	Beware Of Dog
110	1999-11-01	Westlife
111	1998-02-24	Train
112	2000-04-18	Emotional
113	2000-05-09	This Time Around
114	1999-11-23	Sweet Kisses
115	2000-08-17	Back For The First Time
116	2000-08-22	Young World: The Future
117	2000-03-07	Shades of Purple
118	2000-02-22	No One Does It Better
119	2000-05-02	Yes!
120	1999-05-11	Ricky Martin
121	2000-05-09	My Thoughts
122	1999-10-26	LeAnn Rimes
123	1999-10-26	Introducing IMx
124	1999-11-16	2001
125	2000-09-19	Hey Kandi...
126	2000-03-14	From The Bottom To The Top
127	1998-09-22	Dizzy up the Girl
128	2000-05-09	I Wanna Be With You
129	2000-01-25	Voodoo
130	2000-08-01	Burn
131	2000-02-01	Son By 4
132	2000-04-11	Unrestricted
133	1999-12-21	...And Then There Was X
134	1999-05-04	A Place In The Sun
135	2000-10-03	Down The Road I Go
136	2000-03-28	Who Needs Guitars Anyway
137	2000-04-18	Hoku
138	1999-11-01	This Desert Life
139	2000-05-02	Thankful
140	1999-01-12	14:59
141	2000-02-21	The Next Best Thing
142	2000-10-12	Where I Wanna Be
143	1999-06-01	Who Needs Pictures
144	1999-11-02	How Do You Like Me Now?!
145	2000-03-07	Latest Greatest Straitest Hits
146	2000-11-14	Aijuswanaseing
147	1999-11-23	So Good Together
148	1999-11-29	Lara Fabian
149	2000-06-13	Crush
150	2000-10-10	Born To Fly
151	2000-09-26	Greatest Hits
152	2000-01-01	My Soul, My Life
153	1999-09-14	Let There Be Eve... Ruff Ryders' First Lady
154	1999-12-14	Next Friday
155	2000-09-19	Brand New Me
156	2000-09-26	Aaron's Party (Come Get It)
157	2000-02-22	Phil Vassar
158	2000-01-11	Permanently
159	2000-10-03	Lucy Pearls
160	1999-10-26	Under the Influence
161	1999-04-13	You won't Ever Be Lonely
162	2000-04-11	Return Of Saturn
163	2000-07-25	The Ecleftic -2 Sides II A Book
164	2000-06-06	Rascal Flatts
165	1999-08-31	Vitamin C
166	2000-01-20	One Voice
167	2000-05-11	She Rides Wild Horses
168	2000-02-01	Lessons Learned
169	2000-09-19	George Strait
170	2000-07-26	Who Let The Dogs Out
171	1999-08-24	Live, Laugh, Love
172	1999-09-14	Emotion
173	1999-09-21	Amber
174	2000-07-25	People Like Us
175	1999-05-11	The Whole SHeBang
176	2000-05-02	Tracks
177	2000-05-07	Life Story
178	2000-11-07	When Somebody Loves You
179	1999-09-28	D'lectrified
180	2000-03-28	Like Water for Chocolate
181	2000-02-01	Snoop Dogg Presents Tha Eastsidaz
182	1999-08-24	Ideal
183	1999-03-16	100% Ginuwine
184	2000-04-11	Unconditional
185	1999-12-21	... And Then There Was X
186	2000-03-21	The Road to El Dorado
187	2000-05-16	Binaural
188	2000-04-18	Swimming In Champagn
189	1999-06-01	On the 6
190	1999-10-19	Keith Urban
191	1999-02-23	Fanmail
192	2000-04-18	Lets Make Sure We Kiss Goodbye
193	2000-05-01	Whitney: The Greatest Hits
194	1999-10-04	Hooray For Boobies
195	1999-05-04	The Ego Has Landed
196	1998-03-17	I'm Alright
197	2000-07-11	Art And Life
198	1999-12-07	Kaleidoscope
199	1999-09-21	Tight Rope
200	1999-09-28	Black Diamond
201	2000-04-25	Infest
202	1999-09-21	Mountain High Valley Low
203	2000-09-26	Shyne
204	1999-11-22	Man on the Moon
205	1999-07-01	A Night To Remember
206	1999-05-04	A Place in the Sun
207	2000-05-23	Inside Job
208	1999-11-23	Nastradamus
209	2000-06-27	Fortress
210	1999-08-24	Forever
211	2001-08-07	8701
212	2000-06-27	The Notorious K.I.M.
213	1999-08-24	LFO
214	2000-09-26	Brand New Year
215	1999-05-18	Halfway Down the Sky
216	1999-03-23	Amor, Familia y Respeto
217	1999-08-17	Mary
218	2000-06-27	Mirror Mirror
219	2000-10-10	Visit Me
220	1999-05-18	Single White Female
221	2000-10-17	Chocolate Starfish and the Hot Dog Flavored Water
222	1999-07-27	Guerrilla Warfare
223	1999-12-28	Vol. 3... Life and Times of S. Carter
224	1969-06-13	More...
225	1999-04-27	Dawson's Creek
226	1997-11-25	Sevens
227	2020-11-14	Conspiracy of One
228	1998-05-12	5
229	2000-08-29	Strong Heart
230	1999-11-30	Amplified
231	2000-08-04	Coyote Ugly
232	1999-11-02	Tha Block Is Hot
233	1999-12-21	Still I Rise
234	2020-12-18	Breach
235	2000-02-08	Causin' Drama
236	1999-06-22	Significant Other
237	2000-01-25	We Are the Streets
238	2000-04-25	Thug Walkin'
239	1999-11-23	S&M
240	2020-03-10	Untamed
241	1999-07-19	A Little Bit of Mambo
242	2000-04-04	Yeeeah Baby
243	2000-07-18	Hard Rain Don't Last
244	2008-11-11	Fearless
245	2020-05-04	Play It Loud
246	1996-09-11	It's About Time
247	2000-05-08	Music from and Inspired by Mission: Impossible 2
248	2000-07-11	Nutty Professor II: The Klumps
249	1998-08-19	You've Come a Long Way, Baby
250	2000-03-07	G
251	1999-03-04	Back at One
252	1999-09-26	Smoke Rings in the Dark
253	1999-08-22	The Best Man
254	2006-08-13	Daydreamin'
255	2000-05-09	Alma Caribe∩┐╜a
256	1999-08-26	No. 4
257	1999-04-13	Tattoos & Scars
258	2000-10-17	Southern Rain
259	2002-08-20	The Clark Family Experience
260	2000-03-28	Real Live Woman
261	1999-12-16	Any Given Sunday
262	2016-01-22	Exposed
263	2000-09-10	S.D.E,
264	1999-12-14	Tha G-Code
265	1999-05-25	Ghetto Hymns
266	2000-08-10	A Nu Day
267	1995-03-09	The Life I Live
268	2000-08-29	2gether: Again
269	1999-04-17	Dont Call Me Baby
270	2000-08-04	Ryde or Die Vol. 2
271	1999-09-08	Tracie
272	1997-03-15	Nu Flavor
273	2000-03-21	Tamar
274	1999-08-03	Screamin' for My Supper
275	1989-05-09	A Night to Remember
276	1972-08-25	Volume IV
277	2009-02-24	Masterpiece Theatre
278	1994-09-04	Steam
279	2000-03-27	Not That Kind
280	2000-03-21	Da Baddest Bitch
281	2013-03-26	Based on a True Story
282	2002-08-10	Informal Introduction
283	2000-08-08	Art Official Intelligence: Mosaic Thump
284	2000-02-15	Infinite Possibilities
285	2000-08-30	G.O.A.T.
286	2000-11-28	Ghetto Postage
287	2000-02-08	Supreme Clientele
288	1999-11-16	Willennium
289	1999-07-01	Leichenschmaus
290	1997-03-14	Tha Eastsidaz
291	2000-04-21	Kevin & Perry Go Large
\.


                                                                                                                                                                                                                                                                                                                                        3401.dat                                                                                            0000600 0004000 0002000 00000004062 14151505020 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	5
18	17
19	18
20	19
21	20
22	21
23	22
24	23
25	24
26	25
27	3
28	26
29	27
30	28
31	29
32	30
33	31
34	32
35	33
36	34
37	35
38	36
39	37
40	36
41	25
42	38
43	39
44	40
45	41
46	42
47	43
48	38
49	44
50	45
51	46
52	47
53	48
54	49
55	50
56	51
57	52
58	53
59	54
60	55
61	56
62	57
63	58
64	59
65	60
66	61
67	62
68	63
69	64
70	65
71	66
72	67
73	68
74	69
75	70
76	71
77	72
78	73
79	74
80	75
81	76
82	77
83	78
84	79
85	80
86	70
87	81
88	82
89	83
90	84
91	85
92	86
93	87
94	88
95	89
96	90
97	80
98	91
99	92
100	93
101	94
102	95
103	96
104	85
105	97
106	98
107	99
108	100
109	101
110	102
111	103
112	104
113	105
114	106
115	107
116	108
117	109
118	110
119	111
120	88
121	112
122	83
123	113
124	114
125	115
126	116
127	117
128	118
129	119
130	120
131	121
132	122
133	123
134	124
135	125
136	126
137	127
138	128
139	129
140	130
141	41
142	131
143	132
144	133
145	134
146	135
147	136
148	137
149	138
150	139
151	140
152	141
153	142
154	50
155	143
156	144
157	145
158	147
159	148
160	149
161	150
162	151
163	152
164	153
165	154
166	155
167	156
168	157
169	134
170	158
171	159
172	160
173	161
174	162
175	163
176	164
177	165
178	149
179	166
180	167
181	168
182	169
183	170
184	171
185	123
186	172
187	173
188	174
189	175
190	176
191	177
192	178
193	60
194	179
195	180
196	120
197	181
198	182
199	183
200	184
201	185
202	186
203	187
204	188
205	189
206	124
207	190
208	191
209	192
210	193
211	194
212	195
213	196
214	163
215	197
216	198
217	199
218	200
219	201
220	202
221	203
222	204
223	85
224	205
225	71
226	206
227	207
228	208
229	209
230	210
231	83
232	211
233	212
234	213
235	214
236	203
237	215
238	216
239	217
240	218
241	219
242	220
243	221
244	222
245	223
246	224
247	217
248	85
249	225
250	226
251	227
252	228
253	170
254	229
255	230
256	231
257	232
258	233
259	234
260	235
261	236
262	237
263	238
264	239
265	240
266	241
267	242
268	243
269	244
270	142
271	245
272	246
273	247
274	248
275	189
276	249
277	250
278	251
279	252
280	253
281	254
282	255
283	256
284	257
285	258
286	259
287	260
288	261
289	262
290	168
291	263
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                              3394.dat                                                                                            0000600 0004000 0002000 00000007527 14151505020 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Shawn Mendes
2	Anuel AA
3	Ariana Grande
4	Ed Sheeran
5	Post Malone
6	Lil Tecca
7	Sam Smith
8	Lil Nas X
9	Billie Eilish
10	Bad Bunny
11	DJ Snake
12	Lewis Capaldi
13	Sech
14	Drake
15	Chris Brown
16	J Balvin
17	Y2K
18	Lizzo
19	MEDUZA
20	Jhay Cortez
21	Lunay
22	Tones and I
23	Ali Gatie
24	Daddy Yankee
25	The Chainsmokers
26	Young Thug
27	Katy Perry
28	Martin Garrix
29	Jonas Brothers
30	Lauv
31	Kygo
32	Taylor Swift
33	Lady Gaga
34	Khalid
35	ROSAL∩┐╜A
36	Marshmello
37	Nicky Jam
38	Destiny's Child
39	Santana
40	Savage Garden
41	Madonna
42	Aguilera, Christina
43	Janet
44	Iglesias, Enrique
45	Sisqo
46	Lonestar
47	N'Sync
48	Vertical Horizon
49	Creed
50	Aaliyah
51	matchbox twenty
52	Carey, Mariah
53	Hill, Faith
54	Mya
55	Dream
56	Braxton, Toni
57	Anthony, Marc
58	98 Degrees
59	3 Doors Down
60	Houston, Whitney
61	Joe
62	Jordan, Montell
63	Eminem
64	Pink
65	Mumba, Samantha
66	Blaque
67	Elliott, Missy "Misdemeanor"
68	Gray, Macy
69	Ruff Endz
70	Backstreet Boys, The
71	Nine Days
72	Dion, Celine
73	Blink-182
74	Eiffel 65
75	Badu, Erkyah
76	Nelly
77	Next
78	Kenny G
79	Sonique
80	Spears, Britney
81	Everclear
82	Ja Rule
83	Rimes, LeAnn
84	Smash Mouth
85	Jay-Z
86	Jagged Edge
87	Filter
88	Martin, Ricky
89	Mystikal
90	BBMak
91	Third Eye Blind
92	Red Hot Chili Peppers
93	Profyle
94	Barenaked Ladies
95	504 Boyz
96	Sting
97	Kid Rock
98	Foo Fighters
99	Dixie Chicks, The
100	Guy
101	Lil Bow Wow
102	Westlife
103	Train
104	Thomas, Carl
105	Hanson
106	Simpson, Jessica
107	Ludacris
108	Lil' Zane
109	M2M
110	SoulDecision
111	Brock, Chad
112	Avant
113	IMx
114	Dr. Dre
115	Kandi
116	Sammie
117	Goo Goo Dolls
118	Moore, Mandy
119	D'Angelo
120	Messina, Jo Dee
121	Son By Four
122	Da Brat
123	DMX
124	McGraw, Tim
125	Tritt, Travis
126	Alice Deejay
127	Hoku
128	Counting Crows
129	Mary Mary
130	Sugar Ray
131	Jones, Donell
132	Paisley, Brad
133	Keith, Toby
134	Strait, George
135	Musiq
136	McEntire, Reba
137	Fabian, Lara
138	Bon Jovi
139	Evans, Sara
140	Chesney, Kenny
141	J-Shin
142	Eve
143	Montgomery, John Michael
144	Carter, Aaron
145	Vassar, Phil
146	Ice Cube
147	Wills, Mark
148	Lucy Pearl
149	Jackson, Alan
150	Griggs, Andy
151	No Doubt
152	Jean, Wyclef
153	Rascal Flatts
154	Vitamin C
155	Gilman, Billy
156	Rogers, Kenny
157	Lawrence, Tracy
158	Baha Men
159	Walker, Clay
160	McBride, Martina
161	Amber
162	Tippin, Aaron
163	SheDaisy
164	Raye, Collin
165	Black Rob
166	Black, Clint
167	Common
168	Eastsidaz, The
169	Ideal
170	Ginuwine
171	Davidson, Clay
172	John, Elton
173	Pearl Jam
174	Heatherly, Eric
175	Lopez, Jennifer
176	Urban, Keith
177	TLC
178	Gill, Vince
179	Bloodhound Gang
180	Williams, Robbie
181	Beenie Man
182	Kelis
183	Brooks & Dunn
184	Stone, Angie
185	Papa Roach
186	Adams, Yolanda
187	Shyne
188	R.E.M.
189	Diffie, Joe
190	Henley, Don
191	Nas
192	Sister Hazel
193	Puff Daddy
194	Usher
195	Lil' Kim
196	LFO
197	Splender
198	Kumbia Kings
199	Blige, Mary J.
200	Price, Kelly
201	Changing Faces
202	Wright, Chely
203	Limp Bizkit
204	Hot Boys
205	Adkins, Trace
206	Brooks, Garth
207	Offspring, The
208	Kravitz, Lenny
209	Loveless, Patty
210	Q-Tip
211	Lil Wayne
212	2 Pac
213	Wallflowers, The
214	Drama
215	Lox
216	Ying Yang Twins
217	Metallica
218	Yankee Grey
219	Bega, Lou
220	Big Punisher
221	Worley, Darryl
222	Clark, Terri
223	Cagle, Chris
224	Byrd, Tracy
225	Fatboy Slim
226	Levert, Gerald
227	McKnight, Brian
228	Allan, Gary
229	Before Dark
230	Estefan, Gloria
231	Stone Temple Pilots
232	Montgomery Gentry
233	Cyrus, Billy Ray
234	Clark Family Experience
235	Yearwood, Trisha
236	Trick Daddy
237	Moore, Chante
238	Cam'ron
239	Juvenile
240	Hollister, Dave
241	Tamia
242	Carter, Torrey
243	2Ge+her
244	Madison Avenue
245	Spencer, Tracie
246	Nu Flavor
247	Tamar
248	Hart, Beth
249	Funkmaster Flex
250	En Vogue
251	Herndon, Ty
252	Anastacia
253	Trina
254	Lil' Mo
255	Sheist, Shade
256	De La Soul
257	Larrieux, Amel
258	LL Cool J
259	Master P
260	Ghostface Killah
261	Smith, Will
262	Zombie Nation
263	Fragma
\.


                                                                                                                                                                         3396.dat                                                                                            0000600 0004000 0002000 00000000253 14151505020 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        pop
reggaeton flow
rap
country
reggaeton
hip hop
latin
escape room
edm
big room
boy band
r&b en espanol
Rock
Latin
Country
Rap
Pop
Electronica
Jazz
R&B
Reggae
Gospel
\.


                                                                                                                                                                                                                                                                                                                                                     3399.dat                                                                                            0000600 0004000 0002000 00000000005 14151505020 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3398.dat                                                                                            0000600 0004000 0002000 00000000005 14151505020 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3392.dat                                                                                            0000600 0004000 0002000 00000000005 14151505020 0014236 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3391.dat                                                                                            0000600 0004000 0002000 00000000005 14151505020 0014235 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3397.dat                                                                                            0000600 0004000 0002000 00000000005 14151505020 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3393.dat                                                                                            0000600 0004000 0002000 00000026311 14151505020 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Se∩┐╜orita	2018-05-25
2	China	2020-05-29
3	boyfriend (with Social House)	2019-07-09
4	Beautiful People (feat. Khalid)	2019-06-23
5	Goodbyes (Feat. Young Thug)	2019-07-05
6	I Don't Care (with Justin Bieber)	2019-05-10
7	Ransom	2019-05-22
8	How Do You Sleep?	2020-08-30
9	Old Town Road - Remix	2018-05-11
10	bad guy	2019-03-29
11	Callaita	2019-05-31
12	Loco Contigo (feat. J. Balvin & Tyga)	2019-07-26
13	Someone You Loved	2019-05-17
14	Otro Trago - Remix	2019-04-19
15	Money In The Grave (Drake ft. Rick Ross)	2019-06-15
16	No Guidance (feat. Drake)	2019-06-28
17	LA CANCI∩┐╜N	2019-06-28
18	Sunflower - Spider-Man: Into the Spider-Verse	2018-12-14
19	Lalala	2019-06-07
20	Truth Hurts	2019-04-19
21	Piece Of Your Heart	2021-04-28
22	Panini	2018-05-11
23	No Me Conoce - Remix	2019-05-24
24	Soltera - Remix	2019-09-25
25	bad guy (with Justin Bieber)	2019-03-29
26	If I Can't Have You	2018-05-25
27	Dance Monkey	2019-08-30
28	It's You	2019-09-18
29	Con Calma	2019-06-07
30	QUE PRETENDES	2019-06-28
31	Takeaway	2019-12-06
32	7 rings	2019-02-08
33	The London (feat. J. Cole & Travis Scott)	2019-08-16
34	Never Really Over	2020-08-28
35	Summer Days (feat. Macklemore & Patrick Stump of Fall Out Boy)	2019-04-20
36	Otro Trago	2019-04-19
37	Antisocial (with Travis Scott)	2019-05-10
38	Sucker	2014-12-15
39	fuck, i'm lonely (with Anne-Marie) - from ∩┐╜13 Reasons Why: Season 3∩┐╜	2017-03-30
40	Higher Love	1986-06-20
41	You Need To Calm Down	2019-08-23
42	Shallow	2018-09-27
43	Talk	2019-04-05
44	Con Altura	2019-03-28
45	One Thing Right	2020-05-04
46	Te Robar∩┐╜	2019-03-22
47	Happier	2019-02-02
48	Call You Mine	2019-04-02
49	Cross Me (feat. Chance the Rapper & PnB Rock)	2019-05-10
50	Independent Women Part I	2001-04-25
51	Maria, Maria	1999-06-15
52	I Knew I Loved You	1999-11-09
53	Music	2000-09-08
54	Come On Over Baby (All I Want Is You)	1999-08-24
55	Doesn't Really Matter	2001-04-24
56	Say My Name	1999-07-27
57	Be With You	1999-11-23
58	Incomplete	1999-11-30
59	Amazed	1999-06-01
60	It's Gonna Be Me	2000-04-21
61	What A Girl Wants	1999-08-24
62	Everything You Want	1999-10-19
63	With Arms Wide Open	1999-07-28
64	Try Again	2001-07-07
65	Bent	2000-05-23
66	Thank God I Found You	1999-11-02
67	Breathe	1999-11-09
68	Case Of The Ex (Whatcha Gonna Do)	2000-04-25
69	He Loves U Not	2001-01-23
70	He Wasn't Man Enough	2000-04-25
71	You Sang To Me	1999-09-14
72	Give Me Just One Night (Una Noche)	2000-09-26
73	Jumpin' Jumpin'	1999-07-27
74	Kryptonite	2000-02-08
75	Thong Song	1999-11-30
76	I Turn To You	1999-08-24
77	My Love Is Your Love	1998-11-17
78	I Wanna Know	2000-04-18
79	Get It On.. Tonite	1999-11-09
80	Bye Bye Bye	2000-04-21
81	The Real Slim Shady	2000-05-23
82	Most Girls	2000-04-04
83	Gotta Tell You	2000-10-31
84	Bring It All To Me	1999-06-01
85	Hot Boyz	1999-06-22
86	I Try	1999-07-01
87	This I Promise You	2000-04-21
88	No More	2000-08-22
89	Show Me The Meaning Of Being Lonely	1999-05-18
90	Absolutely (Story Of A Girl)	2000-05-16
91	That's The Way It Is	1999-11-12
92	All The Small Things	1999-06-01
93	Blue (Da Ba Dee)	1998-10-01
94	Bag Lady	2000-11-21
95	There U Go	2000-04-04
96	Higher	1999-07-28
97	(Hot S**t) Country Grammar	2000-06-27
98	Wifey	2000-06-20
99	Auld Lang Syne (The Millenium Mix)	1999-11-16
100	It Feels So Good	2000-02-15
101	Oops!.. I Did It Again	2000-05-03
102	Shape Of My Heart	2019-09-25
103	Wonderful	2000-08-11
104	Between Me And You	2000-09-10
105	I Need You	2001-01-30
106	Then The Morning Comes	1999-06-08
107	I Just Wanna Love U (Give It 2 Me)	2000-08-31
108	Let's Get Married	1999-09-28
109	Take A Picture	1999-08-24
110	She Bangs	1998-02-10
111	Shake Ya Ass	2000-09-26
112	Back Here	2000-05-16
113	From The Bottom Of My Broken Heart	1999-01-12
114	Never Let You Go	1999-11-23
115	Otherside	1999-06-08
116	Liar	2000-10-17
117	Pinch Me	2000-09-12
118	He Can't Love U	1999-09-28
119	Wobble Wobble	2000-05-02
120	Desert Rose	1999-09-24
121	Big Pimpin'	1999-12-28
122	Only God Knows Why	1998-08-18
123	Learn To Fly	1999-11-02
124	Goodbye Earl	1999-08-31
125	Dancin'	2000-01-25
126	Bounce With Me	2000-09-26
127	Swear It Again	1999-11-01
128	Meet Virginia	1998-02-24
129	I Wish	2000-04-18
130	This Time Around	2000-05-09
131	I Think I'm In Love With You	1999-11-23
132	What's Your Fantasy	2000-08-17
133	Callin' Me	2000-08-22
134	Don't Say You Love Me	2000-03-07
135	Faded	2000-02-22
136	Yes!	2000-05-02
137	Shake Your Bon-Bon	1999-05-11
138	You're A God	1999-06-15
139	Separated	2000-05-09
140	Big Deal	1999-10-26
141	Stay The Night	1999-10-26
142	The Next Episode	1999-11-16
143	Lucky	2000-05-03
144	Crash And Burn	1999-11-09
145	Don't Think I'm Not	2000-09-19
146	I Like It	2000-03-14
147	Broadway	1998-09-22
148	I Wanna Be With You	2000-05-09
149	Forgot About Dre	1999-11-16
150	Untitled (How Does It Feel)	2000-01-25
151	That's The Way	2000-08-01
152	My First Love	2000-05-09
153	A Puro Dolor (Purest Of Pain)	2000-02-01
154	What'Chu Like	2000-04-11
155	Party Up (Up In Here)	1999-12-21
156	Cowboy Take Me Away	1999-08-31
157	My Next Thirty Years	1999-05-04
158	Best Of Intentions	2000-10-03
159	Better Off Alone	2000-03-28
160	Another Dumb Blonde	2000-04-18
161	I Learned From The Best	1998-11-17
162	Hanginaround	1999-11-01
163	Shackles (Praise You)	2000-05-02
164	Crybaby	1999-11-02
165	My Best Friend	1999-05-04
166	Falls Apart	1999-01-12
167	American Pie	2000-02-21
168	Where I Wanna Be	2000-10-12
169	We Danced	1999-06-01
170	What About Now	1999-06-01
171	The One	1999-05-18
172	How Do You Like Me Now?!	1999-11-02
173	The Best Day	2000-03-07
174	Without You	1999-08-31
175	Just Friends (Sunny)	2000-11-14
176	What Do You Say	1999-11-23
177	Just Be A Man About It	2000-04-25
178	Rhythm Divine	1999-11-23
179	I Will Love Again	1999-11-29
180	It's My Life	2000-06-13
181	Born To Fly	2000-10-10
182	I Lost It	2000-09-26
183	One Night Stand	2000-01-01
184	Love Is Blind	1999-09-14
185	I Don't Wanna	1999-12-14
186	The Little Girl	2000-09-19
187	Aaron's Party (Come Get It)	2000-09-26
188	Just Another Day In Paradise	2000-02-22
189	You Can Do It	1999-12-14
190	Back At One	2000-01-11
191	Dance Tonight	2000-10-03
192	It Must Be Love	1999-10-26
193	She's More	1999-04-13
194	Simple Kind Of Life	2000-04-11
195	911	2000-07-25
196	Prayin' For Daylight	2000-06-06
197	Graduation (Friends Forever)	1999-08-31
198	One Voice	2000-01-20
199	Smile	1999-06-01
200	Buy Me A Rose	2000-05-11
201	Lessons Learned	2000-02-01
202	Go On	2000-09-19
203	Got To Get It	1999-11-30
204	Who Let The Dogs Out	2000-07-26
205	The Chain Of Love	1999-08-24
206	Love's The Only House	1999-09-14
207	Sexual (Li Da Di)	1999-09-21
208	Kiss This	2000-07-25
209	I Will.. But	1999-05-11
210	Couldn't Last A Moment	2000-05-02
211	Whoa!	2000-05-07
212	Pop A Top	2000-11-07
213	Been There	1999-09-28
214	The Light	2000-03-28
215	Carlene	2000-02-22
216	www.memory	2000-11-07
217	The Itch	1999-08-31
218	G'D Up	2000-02-01
219	Whatever	1999-08-24
220	Emotional	2000-04-18
221	None Of Ur Friends Business	1999-03-16
222	Unconditional	2000-04-11
223	What You Want	1999-12-21
224	Someday Out Of The Blue	2000-03-21
225	Nothing As It Seems	2000-05-16
226	The Best Of Me	2000-04-25
227	Flowers On The Wall	2000-04-18
228	Stan	2000-05-23
229	I'll Be	1999-11-23
230	Feelin' Good	1999-06-01
231	Your Everything	1999-10-19
232	Dear Lie	1999-02-23
233	Feels Like Love	2000-04-18
234	Could I Have This Kiss Forever	2000-05-01
235	The Bad Touch	1999-10-04
236	Angels	1999-05-04
237	Because You Love Me	1998-03-17
238	Country Comes To Town	1999-11-02
239	Girls Dem Sugar	2000-07-11
240	Let's Make Love	1999-11-09
241	Caught Out There	1999-12-07
242	Anything	1999-12-28
243	Loser	2000-02-08
244	You'll Always Be Loved By Me	1999-09-21
245	What I Need To Do	2000-09-26
246	No More Rain (In This Cloud)	1999-09-28
247	That's What I'm Looking For	2000-04-11
248	This Woman Needs	1999-05-11
249	Last Resort	2000-04-25
250	Open My Heart	1999-09-21
251	Bad Boyz	2000-09-26
252	The Great Beyond	1999-11-22
253	It's Always Somethin'	1999-07-01
254	Some Things Never Change	1999-05-04
255	Taking You Home	2000-05-23
256	The Way I Am	2000-05-23
257	You Owe Me	1999-11-23
258	Change Your Mind	2000-06-27
259	Best Friend	1999-08-24
260	There You Are	1999-09-14
261	Pop Ya Collar	2001-08-07
262	No Matter What They Say	2000-06-27
263	I Don't Wanna Kiss You Goodnight	1999-08-24
264	Deck The Halls	2000-09-26
265	I Think God Can Explain	1999-05-18
266	Where You Are	1999-11-23
267	Mirror Mirror	2000-03-07
268	U Don't Love Me	1999-03-23
269	Treat Her Like A Lady	2000-04-18
270	Deep Inside	1999-08-17
271	You Should've Told Me	2000-06-27
272	That Other Woman	2000-10-10
273	It Was	1999-05-18
274	Rollin'	2000-10-17
275	I Need A Hot Girl	1999-07-27
276	Do It Again (Put Ya Hands Up)	1999-12-28
277	More	1969-06-13
278	Cold Day In July	1975-02-15
279	As We Lay	2000-06-27
280	What's My Name	1999-12-21
281	Private Emotion	1999-05-11
282	If I Am	1999-04-27
283	Give Me You	1999-08-17
284	Californication	1999-06-08
285	Deep Inside Of You	1994-04-10
286	Do What You Gotta Do	1997-11-25
287	Original Prankster	2020-11-14
288	My Baby You	1999-09-14
289	Same Script, Different Cast	2000-05-16
290	Left & Right	2000-01-25
291	I Belong To You	1998-05-12
292	That's The Kind Of Mood I'm In	2000-08-29
293	Breathe And Stop	1999-11-30
294	Can't Fight The Moonlight	2000-08-04
295	Tha Block Is Hot	1999-11-02
296	Baby Don't Cry (Keep Ya Head Up II)	1999-12-21
297	Sleepwalker	2020-12-18
298	Left, Right, Left	2000-02-08
299	N 2 Gether Now	1999-06-22
300	Ryde or Die, Chick	2000-01-25
301	Whistle While You Twurk	2000-04-25
302	Live, Laugh, Love	1999-08-24
303	No Leaf Clover (Live)	1999-11-23
304	Another Nine Minutes	2020-03-10
305	Tricky Tricky 	1999-07-19
306	It's So Hard	2000-04-04
307	When You Need My Love	2000-07-18
308	How Many Licks?	2000-06-27
309	A Little Gasoline	2008-11-11
310	A Country Boy Can Survive	1971-02-19
311	My Love Goes On And On	2020-05-04
312	Put Your Hand In Mine	1996-09-11
313	I Disappear	2000-05-08
314	Hey Papi	2000-07-11
315	The Rockafeller Skank	1998-08-19
316	Mr. Too Damn Good	2000-03-07
317	Stay Or Let It Go	1999-03-04
318	Smoke Rings In The Dark	1999-09-26
319	The Best Man I Can Be	1999-08-22
320	Monica	2006-08-13
321	No Me Dejes De Querer	2000-05-09
322	Sour Girl	1999-08-26
323	Daddy Won't Sell The Farm	1999-04-13
324	You Won't Be Lonely Now	2000-10-17
325	Meanwhile Back At The Ranch	2002-08-20
326	Summer Rain	2000-04-18
327	Real Live Woman	2000-03-28
328	Shut Up	1999-12-16
329	Straight Up	2016-01-22
330	What Means The World To You	2000-09-10
331	U Understand	1999-12-14
332	Can't Stay	1999-05-25
333	Can't Go For That	2000-08-10
334	West Side Story	1999-08-24
335	Me Neither	1999-06-01
336	Take That	1995-03-09
337	The Hardest Part Of Breaking Up (Is Getting Back Your Stuff)	2000-08-29
338	Don't Call Me Baby	1999-04-17
339	Got It All	2000-08-04
340	Re-Arranged	1999-06-22
341	Still In My Heart	1999-09-08
342	3 Little Words	1997-03-15
343	If You Don't Wanna Love Me	2000-03-21
344	Baby U Are	2000-03-07
345	L.A. Song	1999-08-03
346	The Quittin' Kind	1989-05-09
347	Do You	1972-08-25
348	Love Sets You Free	2000-06-27
349	Riddle	2009-02-24
350	No Mercy	1994-09-04
351	I'm Outta Love	2000-03-27
352	Pull Over	2000-03-21
353	Ta Da	2013-03-26
354	Where I Wanna Be	2000-10-12
355	All Good?	2000-08-08
356	Get Up	2000-02-15
357	Spanish Guitar	2000-04-25
358	Imagine That	2000-08-30
359	Souljas	2000-11-28
360	Cherchez LaGhost	2000-02-08
361	Freakin' It	1999-11-16
362	Kernkraft 400	1999-07-01
363	Got Beef	1997-03-14
364	Toca's Miracle	2000-04-21
\.


                                                                                                                                                                                                                                                                                                                       3403.dat                                                                                            0000600 0004000 0002000 00000006475 14151505020 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pop
2	reggaeton flow
3	pop
4	pop
5	rap
6	pop
7	rap
8	pop
9	country
10	pop
11	reggaeton
12	pop
13	pop
14	pop
15	hip hop
16	pop
17	latin
18	rap
19	hip hop
20	escape room
21	pop
22	country
23	reggaeton flow
24	latin
25	pop
26	pop
27	pop
28	hip hop
29	latin
30	latin
31	edm
32	pop
33	hip hop
34	pop
35	big room
36	pop
37	pop
38	boy band
39	pop
40	edm
41	pop
42	pop
43	pop
44	r&b en espanol
45	edm
46	latin
47	edm
48	edm
49	pop
50	Rock
51	Rock
52	Rock
53	Rock
54	Rock
55	Rock
56	Rock
57	Latin
58	Rock
59	Country
60	Rock
61	Rock
62	Rock
63	Rock
64	Rock
65	Rock
66	Rock
67	Rap
68	Rock
69	Rock
70	Rock
71	Latin
72	Rock
73	Rock
74	Rock
75	Rock
76	Rock
77	Rock
78	Rock
79	Rap
80	Rock
81	Rap
82	Rock
83	Rock
84	Pop
85	Rap
86	Rock
87	Rock
88	Rock
89	Rock
90	Rock
91	Rock
92	Rock
93	Electronica
94	Rock
95	Rock
96	Rock
97	Rap
98	Rock
99	Jazz
100	Rock
101	Rock
102	Rock
103	Rock
104	Rap
105	Country
106	Rock
107	Rap
108	Rock
109	Rock
110	Latin
111	Rap
112	Rock
113	Rock
114	Rock
115	Rock
116	R&B
117	Rock
118	Rock
119	Rap
120	Rock
121	Rap
122	Rock
123	Rock
124	Country
125	R&B
126	Rap
127	Rock
128	Rock
129	Rock
130	Country
131	Pop
132	Rap
133	Rap
134	Pop
135	Rock
136	Country
137	Latin
138	Rock
139	Rock
140	Country
141	Rap
142	Rap
143	Rock
144	Rock
145	Rock
146	Rock
147	Rock
148	Pop
149	Rap
150	R&B
151	Country
152	Rock
153	Latin
154	Rap
155	Rap
156	Country
157	Country
158	Country
159	Electronica
160	Pop
161	Rock
162	Rock
163	Rock
164	Rock
165	Country
166	Rock
167	Rock
168	Rock
169	Country
170	Country
171	Rock
172	Country
173	Country
174	Country
175	Rap
176	Country
177	Rock
178	Latin
179	Pop
180	Rock
181	Country
182	Country
183	R&B
184	Rap
185	Rock
186	Country
187	R&B
188	Country
189	Rap
190	Country
191	R&B
192	Country
193	Country
194	Rock
195	Rap
196	Country
197	Rock
198	Country
199	Country
200	Country
201	Country
202	Country
203	Rock
204	R&B
205	Country
206	Country
207	Rock
208	Country
209	Country
210	Country
211	Rap
212	Country
213	Country
214	Rap
215	Country
216	Country
217	Rock
218	Rap
219	R&B
220	Rock
221	Rock
222	Country
223	Rap
224	Rock
225	Rock
226	Rock
227	Country
228	Rap
229	Country
230	Latin
231	Country
232	Rock
233	Country
234	Rock
235	R&B
236	Rock
237	Country
238	Country
239	Reggae
240	Rap
241	R&B
242	Rap
243	Rock
244	Country
245	Country
246	R&B
247	Rap
248	Country
249	Rock
250	Gospel
251	Rap
252	Rock
253	Country
254	Country
255	Rock
256	Rap
257	R&B
258	Rock
259	Rap
260	Country
261	Rock
262	Rap
263	Rock
264	Country
265	R&B
266	Rock
267	Pop
268	R&B
269	Rock
270	Rock
271	Rock
272	Rock
273	R&B
274	Rock
275	Rap
276	Rap
277	Country
278	Country
279	Rock
280	Rap
281	Latin
282	Rock
283	Rock
284	Rock
285	Rock
286	Country
287	Rock
288	Latin
289	Rock
290	R&B
291	Rock
292	Country
293	Rock
294	Country
295	Rap
296	Rap
297	Rock
298	Rap
299	Rock
300	Rap
301	Rap
302	Country
303	Rock
304	Country
305	Rock
306	Rap
307	Country
308	Rap
309	Country
310	Country
311	Country
312	Country
313	Rock
314	Rap
315	Electronica
316	R&B
317	Rock
318	Country
319	Rock
320	Rock
321	Rock
322	Rock
323	Country
324	Country
325	Country
326	Rock
327	Country
328	Rap
329	Rock
330	Rap
331	Rap
332	Rock
333	Rock
334	Rock
335	Country
336	Rock
337	R&B
338	Electronica
339	Rap
340	Rock
341	Rock
342	R&B
343	Rock
344	R&B
345	Country
346	Country
347	Rap
348	Rock
349	Rock
350	Country
351	Pop
352	Rap
353	Rap
354	Rap
355	Rap
356	R&B
357	Rock
358	Rap
359	Rap
360	R&B
361	Rap
362	Rock
363	Rap
364	R&B
\.


                                                                                                                                                                                                   3400.dat                                                                                            0000600 0004000 0002000 00000005110 14151505020 0014226 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	2
3	3
4	4
5	5
6	4
7	6
8	7
9	8
10	9
11	10
12	11
13	12
14	13
15	14
16	15
17	16
18	5
19	17
20	18
21	19
22	8
23	20
24	21
25	9
26	1
27	22
28	23
29	24
30	16
31	25
32	3
33	26
34	27
35	28
36	13
37	4
38	29
39	30
40	31
41	32
42	33
43	34
44	35
45	36
46	37
47	36
48	25
49	4
50	38
51	39
52	40
53	41
54	42
55	43
56	38
57	44
58	45
59	46
60	47
61	42
62	48
63	49
64	50
65	51
66	52
67	53
68	54
69	55
70	56
71	57
72	58
73	38
74	59
75	45
76	42
77	60
78	61
79	62
80	47
81	63
82	64
83	65
84	66
85	67
86	68
87	47
88	69
89	70
90	71
91	72
92	73
93	74
94	75
95	64
96	49
97	76
98	77
99	78
100	79
101	80
102	70
103	81
104	82
105	83
106	84
107	85
108	86
109	87
110	88
111	89
112	90
113	80
114	91
115	92
116	93
117	94
118	86
119	95
120	96
121	85
122	97
123	98
124	99
125	100
126	101
127	102
128	103
129	104
130	105
131	106
132	107
133	108
134	109
135	110
136	111
137	88
138	48
139	112
140	83
141	113
142	114
143	80
144	40
145	115
146	116
147	117
148	118
149	114
150	119
151	120
152	112
153	121
154	122
155	123
156	99
157	124
158	125
159	126
160	127
161	60
162	128
163	129
164	52
165	124
166	130
167	41
168	131
169	132
170	46
171	70
172	133
173	134
174	99
175	135
176	136
177	56
178	44
179	137
180	138
181	139
182	140
183	141
184	142
185	50
186	143
187	144
188	145
189	146
190	147
191	148
192	149
193	150
194	151
195	152
196	153
197	154
198	155
199	46
200	156
201	157
202	134
203	45
204	158
205	159
206	160
207	161
208	162
209	163
210	164
211	165
212	149
213	166
214	167
215	145
216	149
217	154
218	168
219	169
220	104
221	170
222	171
223	123
224	172
225	173
226	54
227	174
228	63
229	136
230	175
231	176
232	177
233	178
234	60
235	179
236	180
237	120
238	133
239	181
240	53
241	182
242	85
243	59
244	183
245	140
246	184
247	122
248	163
249	185
250	186
251	187
252	188
253	189
254	124
255	190
256	63
257	191
258	192
259	193
260	160
261	194
262	195
263	196
264	163
265	197
266	106
267	109
268	198
269	61
270	199
271	200
272	201
273	202
274	203
275	204
276	85
277	205
278	99
279	200
280	123
281	88
282	71
283	199
284	92
285	91
286	206
287	207
288	57
289	60
290	119
291	208
292	209
293	210
294	83
295	211
296	212
297	213
298	214
299	203
300	215
301	216
302	159
303	217
304	218
305	219
306	220
307	221
308	195
309	222
310	111
311	223
312	224
313	217
314	85
315	225
316	226
317	227
318	228
319	170
320	229
321	230
322	231
323	232
324	233
325	234
326	104
327	235
328	236
329	237
330	238
331	239
332	240
333	241
334	196
335	132
336	242
337	243
338	244
339	142
340	203
341	245
342	246
343	247
344	226
345	248
346	189
347	249
348	200
349	250
350	251
351	252
352	253
353	254
354	255
355	256
356	257
357	56
358	258
359	259
360	260
361	261
362	262
363	168
364	263
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                        3402.dat                                                                                            0000600 0004000 0002000 00000005141 14151505020 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
2	2
3	3
4	4
5	5
6	4
7	6
8	7
9	8
10	9
11	10
12	11
13	12
14	13
15	14
16	15
17	16
18	17
19	18
20	19
21	20
22	8
23	21
24	22
25	9
26	1
27	23
28	24
29	25
30	16
31	26
32	27
33	28
34	29
35	30
36	13
37	4
38	31
39	32
40	33
41	34
42	35
43	36
44	37
45	38
46	39
47	40
48	41
49	4
50	42
51	43
52	44
53	45
54	46
55	47
56	48
57	49
58	50
59	51
60	52
61	46
62	53
63	54
64	55
65	56
66	57
67	58
68	59
69	60
70	61
71	62
72	63
73	48
74	64
75	50
76	46
77	65
78	66
79	67
80	52
81	68
82	69
83	70
84	71
85	72
86	73
87	52
88	74
89	75
90	76
91	77
92	78
93	79
94	80
95	69
96	54
97	81
98	82
99	83
100	84
101	85
102	86
103	87
104	88
105	89
106	90
107	91
108	92
109	93
110	94
111	95
112	96
113	97
114	98
115	99
116	100
117	101
118	92
119	102
120	103
121	104
122	105
123	106
124	107
125	108
126	109
127	110
128	111
129	112
130	113
131	114
132	115
133	116
134	117
135	118
136	119
137	120
138	53
139	121
140	122
141	123
142	124
143	85
144	44
145	125
146	126
147	127
148	128
149	124
150	129
151	130
152	121
153	131
154	132
155	133
156	107
157	134
158	135
159	136
160	137
161	65
162	138
163	139
164	57
165	134
166	140
167	141
168	142
169	143
170	51
171	75
172	144
173	145
174	107
175	146
176	147
177	61
178	49
179	148
180	149
181	150
182	151
183	152
184	153
185	154
186	155
187	156
188	157
189	154
190	158
191	159
192	160
193	161
194	162
195	163
196	164
197	165
198	166
199	51
200	167
201	168
202	169
203	50
204	170
205	171
206	172
207	173
208	174
209	175
210	176
211	177
212	178
213	179
214	180
215	157
216	178
217	165
218	181
219	182
220	112
221	183
222	184
223	185
224	186
225	187
226	59
227	188
228	68
229	147
230	189
231	190
232	191
233	192
234	193
235	194
236	195
237	196
238	144
239	197
240	58
241	198
242	104
243	64
244	199
245	151
246	200
247	132
248	175
249	201
250	202
251	203
252	204
253	205
254	206
255	207
256	68
257	208
258	209
259	210
260	172
261	211
262	212
263	213
264	214
265	215
266	114
267	117
268	216
269	66
270	217
271	218
272	219
273	220
274	221
275	222
276	223
277	224
278	107
279	218
280	185
281	120
282	225
283	217
284	99
285	98
286	226
287	227
288	62
289	193
290	129
291	228
292	229
293	230
294	231
295	232
296	233
297	234
298	235
299	236
300	237
301	238
302	171
303	239
304	240
305	241
306	242
307	243
308	212
309	244
310	119
311	245
312	246
313	247
314	248
315	249
316	250
317	251
318	252
319	253
320	254
321	255
322	256
323	257
324	258
325	259
326	112
327	260
328	261
329	262
330	263
331	264
332	265
333	266
334	213
335	143
336	267
337	268
338	269
339	270
340	236
341	271
342	272
343	273
344	250
345	274
346	275
347	276
348	218
349	277
350	278
351	279
352	280
353	281
354	282
355	283
356	284
357	61
358	285
359	286
360	287
361	288
362	289
363	290
364	291
\.


                                                                                                                                                                                                                                                                                                                                                                                                                               restore.sql                                                                                         0000600 0004000 0002000 00000033561 14151505020 0015365 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album (
    albumid integer NOT NULL,
    date_created date NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.album OWNER TO postgres;

--
-- Name: album_made_artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.album_made_artist (
    albumid integer NOT NULL,
    artistid integer NOT NULL
);


ALTER TABLE public.album_made_artist OWNER TO postgres;

--
-- Name: artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.artist (
    artistid integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.artist OWNER TO postgres;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    name text NOT NULL
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Name: like_song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.like_song (
    profileid integer NOT NULL,
    songid integer NOT NULL
);


ALTER TABLE public.like_song OWNER TO postgres;

--
-- Name: part_of_playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.part_of_playlist (
    playlistid integer NOT NULL,
    songid integer NOT NULL
);


ALTER TABLE public.part_of_playlist OWNER TO postgres;

--
-- Name: playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playlist (
    playlistid integer NOT NULL,
    playlist_name text NOT NULL
);


ALTER TABLE public.playlist OWNER TO postgres;

--
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    profileid integer NOT NULL,
    username text NOT NULL
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- Name: profile_made_playlist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile_made_playlist (
    profileid integer NOT NULL,
    playlistid integer NOT NULL,
    date_created date NOT NULL
);


ALTER TABLE public.profile_made_playlist OWNER TO postgres;

--
-- Name: song; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song (
    songid integer NOT NULL,
    song_name text NOT NULL,
    date_created date NOT NULL
);


ALTER TABLE public.song OWNER TO postgres;

--
-- Name: song_is_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song_is_genre (
    songid integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.song_is_genre OWNER TO postgres;

--
-- Name: song_made_artist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song_made_artist (
    songid integer NOT NULL,
    artistid integer NOT NULL
);


ALTER TABLE public.song_made_artist OWNER TO postgres;

--
-- Name: song_part_of_album; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.song_part_of_album (
    songid integer NOT NULL,
    albumid integer NOT NULL
);


ALTER TABLE public.song_part_of_album OWNER TO postgres;

--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album (albumid, date_created, name) FROM stdin;
\.
COPY public.album (albumid, date_created, name) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: album_made_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.album_made_artist (albumid, artistid) FROM stdin;
\.
COPY public.album_made_artist (albumid, artistid) FROM '$$PATH$$/3401.dat';

--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.artist (artistid, name) FROM stdin;
\.
COPY public.artist (artistid, name) FROM '$$PATH$$/3394.dat';

--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (name) FROM stdin;
\.
COPY public.genre (name) FROM '$$PATH$$/3396.dat';

--
-- Data for Name: like_song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.like_song (profileid, songid) FROM stdin;
\.
COPY public.like_song (profileid, songid) FROM '$$PATH$$/3399.dat';

--
-- Data for Name: part_of_playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.part_of_playlist (playlistid, songid) FROM stdin;
\.
COPY public.part_of_playlist (playlistid, songid) FROM '$$PATH$$/3398.dat';

--
-- Data for Name: playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playlist (playlistid, playlist_name) FROM stdin;
\.
COPY public.playlist (playlistid, playlist_name) FROM '$$PATH$$/3392.dat';

--
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (profileid, username) FROM stdin;
\.
COPY public.profile (profileid, username) FROM '$$PATH$$/3391.dat';

--
-- Data for Name: profile_made_playlist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile_made_playlist (profileid, playlistid, date_created) FROM stdin;
\.
COPY public.profile_made_playlist (profileid, playlistid, date_created) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: song; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song (songid, song_name, date_created) FROM stdin;
\.
COPY public.song (songid, song_name, date_created) FROM '$$PATH$$/3393.dat';

--
-- Data for Name: song_is_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song_is_genre (songid, name) FROM stdin;
\.
COPY public.song_is_genre (songid, name) FROM '$$PATH$$/3403.dat';

--
-- Data for Name: song_made_artist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song_made_artist (songid, artistid) FROM stdin;
\.
COPY public.song_made_artist (songid, artistid) FROM '$$PATH$$/3400.dat';

--
-- Data for Name: song_part_of_album; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.song_part_of_album (songid, albumid) FROM stdin;
\.
COPY public.song_part_of_album (songid, albumid) FROM '$$PATH$$/3402.dat';

--
-- Name: album_made_artist album_made_artist_artist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_pk PRIMARY KEY (albumid, artistid);


--
-- Name: album album_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pk PRIMARY KEY (albumid);


--
-- Name: artist artist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pk PRIMARY KEY (artistid);


--
-- Name: genre genre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pk PRIMARY KEY (name);


--
-- Name: like_song like_song_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_pk PRIMARY KEY (profileid, songid);


--
-- Name: profile_made_playlist owns_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_pk PRIMARY KEY (playlistid, profileid);


--
-- Name: part_of_playlist part_of_playlist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_pk PRIMARY KEY (playlistid, songid);


--
-- Name: playlist playlist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playlist
    ADD CONSTRAINT playlist_pk PRIMARY KEY (playlistid);


--
-- Name: profile profile_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pk PRIMARY KEY (profileid);


--
-- Name: song_made_artist song_made_artist_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_pk PRIMARY KEY (songid, artistid);


--
-- Name: song_part_of_album song_part_of_album_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_pk PRIMARY KEY (songid, albumid);


--
-- Name: song song_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song
    ADD CONSTRAINT song_pk PRIMARY KEY (songid);


--
-- Name: song_is_genre song_song_is_genre_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_pk PRIMARY KEY (songid, name);


--
-- Name: album_made_artist album_made_artist_artist_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_fk FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: album_made_artist album_made_artist_artist_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.album_made_artist
    ADD CONSTRAINT album_made_artist_artist_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: like_song like_song_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: like_song like_song_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.like_song
    ADD CONSTRAINT like_song_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_made_playlist owns_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_fk FOREIGN KEY (profileid) REFERENCES public.profile(profileid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_made_playlist owns_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile_made_playlist
    ADD CONSTRAINT owns_fk_1 FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: part_of_playlist part_of_playlist_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_fk FOREIGN KEY (playlistid) REFERENCES public.playlist(playlistid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: part_of_playlist part_of_playlist_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.part_of_playlist
    ADD CONSTRAINT part_of_playlist_fk_1 FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_made_artist song_made_artist_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_made_artist song_made_artist_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_made_artist
    ADD CONSTRAINT song_made_artist_fk_1 FOREIGN KEY (artistid) REFERENCES public.artist(artistid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_part_of_album song_part_of_album_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_part_of_album song_part_of_album_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_part_of_album
    ADD CONSTRAINT song_part_of_album_fk_1 FOREIGN KEY (albumid) REFERENCES public.album(albumid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_is_genre song_song_is_genre_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_fk FOREIGN KEY (songid) REFERENCES public.song(songid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: song_is_genre song_song_is_genre_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.song_is_genre
    ADD CONSTRAINT song_song_is_genre_fk_1 FOREIGN KEY (name) REFERENCES public.genre(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
