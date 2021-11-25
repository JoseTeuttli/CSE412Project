from flask import Flask, request
from flask.templating import render_template
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(host="localhost", port=5432,
                        database="postgres", user="postgres", password="password")
cur = conn.cursor()
# cur.execute("""SELECT * FROM artist""")
# query_results = cur.fetchall()


@app.route('/')
def index():
    return render_template('index.html')


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
        #cur.execute("select * from album")
        # select song_name,album.name,album.date_created from song, song_part_of_album, album where album.name='Survivor' and album.albumid=song_part_of_album.albumid and song.songid=song_part_of_album.songid
        cur.execute("select * from song,album where name = %s",
                    (search_text,))
    elif(search_type == 'arist'):
        cur.execute("select * from artist where name = %s",
                    (search_text,))
    elif(search_type == 'song'):
        cur.execute("select * from song where song_name = %s",
                    (search_text,))
    elif(search_type == 'genre'):
        cur.execute(
            "select song_name from song where songid in (select songid from song_is_genre where name=%s)", (search_text,))
    query_results = cur.fetchall()

    # if(search_type == 'album'):
    #     album_data = []
    #     for element in query_results:
    #         album_tuple = (element[2], element[1])
    #         album_data.append(album_tuple)
    #     return render_template('search_result_album.html', album_data=album_data)
    # if(search_type == 'artist'):
    #     artist_data = []
    #     for element in query_results:
    #         artist_tuple = ()
    return render_template('search_result.html', data=query_results)


if __name__ == '__main__':  # python interpreter assigns "__main__" to the file you run
    app.run(debug=True)


# def hello_world():
#     return render_template('index.html')


# def sql_query():
#     cur.execute("""SELECT * FROM artist""")
#     query_results = cur.fetchall()
#     return "<p>"+str(query_results)+"<\p>"


if __name__ == '__main__':
    app.run()
