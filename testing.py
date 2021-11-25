search_text = 'artist name'
search_type = 'artist'
sql_query = "select song_name from song where songid in (select songid from song_is_genre where name='" + \
    search_text+"')"
print(sql_query)
