from flask import Flask, request
from flask.templating import render_template
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(host="localhost", port=5432,
                        database="postgres", user="postgres", password="password")
cur = conn.cursor()

#global PROFILE_ID
profile_id = -1
#global PROFILE_USERNAME
profile_username = ""


@app.route('/')
def index():
    print("current profile_username: ", profile_username)
    return render_template('index.html', profile_username=profile_username)


@app.route('/submit', methods=['POST'])
def submit():
    # fetch a certain student2
    sql_query = request.form['sql_query']
    cur.execute(sql_query)

    query_results = str(cur.fetchall())
    return render_template('success.html', data=query_results)


@app.route('/search')
def search():
    return render_template('search.html')


@app.route('/search_result', methods=['POST'])
def search_result():
    search_text = request.form['search_text']
    search_type = str(request.form['search_type'])
    if(search_type == 'album'):
        cur.execute("""select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
                    where album.albumid=album_made_artist.albumid
                    and artist.artistid=album_made_artist.artistid
                    and song.songid=song_part_of_album.songid
                    and album.albumid=song_part_of_album.albumid
                    and song.songid=song_made_artist.songid
                    and artist.artistid=song_made_artist.artistid
                    and song.songid=song_is_genre.songid
                    and album.name=%s""", (search_text,))
    elif(search_type == 'artist'):
        cur.execute("""select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
                    where album.albumid=album_made_artist.albumid
                    and artist.artistid=album_made_artist.artistid
                    and song.songid=song_part_of_album.songid
                    and album.albumid=song_part_of_album.albumid
                    and song.songid=song_made_artist.songid
                    and artist.artistid=song_made_artist.artistid
                    and song.songid=song_is_genre.songid
                    and artist.name=%s""", (search_text,))
    elif(search_type == 'song'):
        cur.execute("""select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
                    where album.albumid=album_made_artist.albumid
                    and artist.artistid=album_made_artist.artistid
                    and song.songid=song_part_of_album.songid
                    and album.albumid=song_part_of_album.albumid
                    and song.songid=song_made_artist.songid
                    and artist.artistid=song_made_artist.artistid
                    and song.songid=song_is_genre.songid
                    and song.song_name=%s""", (search_text,))
    elif(search_type == 'genre'):
        cur.execute("""select song_name,album.name,artist.name,song.date_created,song_is_genre.name from song,album,artist,song_part_of_album,song_made_artist,song_is_genre,album_made_artist
                    where album.albumid=album_made_artist.albumid
                    and artist.artistid=album_made_artist.artistid
                    and song.songid=song_part_of_album.songid
                    and album.albumid=song_part_of_album.albumid
                    and song.songid=song_made_artist.songid
                    and artist.artistid=song_made_artist.artistid
                    and song.songid=song_is_genre.songid
                    and song_is_genre.name=%s""", (search_text,))
    query_results = cur.fetchall()

    return render_template('search_result.html', data=query_results)


@app.route('/login')
def login():
    return render_template('login.html')


@app.route('/logged_in', methods=['POST'])
def logged_in():
    username = request.form['username']
    cur.execute("""select profileid from profile 
                where profile.username=%s""", (username,))
    query_results = cur.fetchall()
    global profile_username
    global profile_id
    profile_username = username
    print(profile_username + " REEEEE")
    if len(query_results) == 0:
        cur.execute("""select profileid from profile""")
        query_results = cur.fetchall()
        next_index = len(query_results)+1
        cur.execute("""insert into profile values (%s, %s)""",
                    (next_index, profile_username))
        conn.commit()
        profile_id = next_index
    else:
        profile_id = query_results
    return render_template('logged_in.html', profile_username=profile_username)


if __name__ == '__main__':  # python interpreter assigns "__main__" to the file you run
    app.run(debug=True)
