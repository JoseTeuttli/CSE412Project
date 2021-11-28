import pandas as pd
import numpy as np

def genCommands(data):
    with open("commands.sql", "r+") as f:
        #Genre Commands
        #f.write("\n--Add genres to Database:\n")
        for genre in data.Genre.unique():
            f.write("insert into genre values ('" + genre + "');\n")

        #Artist Commands
        #f.write("\n--Add artists to Database:\n")
        for name in data.ArtistName.unique():
            id = str(data[data["ArtistName"]==name].ArtistID.values.tolist()[0])
            f.write("insert into artist values (" + id + ", '" + name + "');\n")

        #Album Commands
        #f.write("\n--Add albums to Database:\n")
        for name in data.AlbumName.unique():
            date = str(data[data["AlbumName"]==name].Date.values.tolist()[0])
            id = str(data[data["AlbumName"]==name].AlbumID.values.tolist()[0])
            f.write("insert into album values (" + id + ", '" + date  + "', '" + name + "');\n")

        #Song Commands
        #f.write("\n--Add songs to Database:\n")
        previousids = []
        for name in data.SongName:
            date = str(data[data["SongName"]==name].Date.values.tolist()[0])
            for songid in data[data["SongName"]==name].SongID.values.tolist():
                if songid not in previousids:
                    previousids.append(songid)
                    f.write("insert into song values (" + str(songid) + ", '" + name  + "', '" + date + "');\n")
                    break

        #Album | Artist Commands
        #f.write("\n--Add Album x Artist Relationship to Database:\n")
        for albumID in data.AlbumID.unique():
            artistID = data[data["AlbumID"]==albumID].ArtistID.values.tolist()[0]
            f.write("insert into album_made_artist values (" + str(albumID) + ", " + str(artistID) + ");\n")

        #Song | Artist Commands
        #f.write("\n--Add Song x Artist Relationship to Database:\n")
        for songID in data.SongID.unique():
            artistID = data[data["SongID"]==songID].ArtistID.values.tolist()[0]
            f.write("insert into song_made_artist values (" + str(songID) + ", " + str(artistID) + ");\n")

        #Song | Genre Commands
        #f.write("\n--Add Song x Genre Relationship to Database:\n")
        for songID in data.SongID.unique():
            genre = data[data["SongID"]== songID].Genre.values.tolist()[0]
            f.write("insert into song_is_genre values (" + str(songID) + ", '" + genre + "');\n")

    f.close()


#Track/Song : Song.ID, Song.Name, Artist.ID, Album.ID, Date, Genre
#Album: Album.ID, Album.Name, Artist.ID, Song.ID[],  Date
#Artist: Artist.ID, Artist.Name, Song.ID[], Album.ID[]


data = pd.read_csv("data.csv")
data["ArtistID"] = 0
data["AlbumID"] = 0

for idx, artist in enumerate(data["ArtistName"].unique()):
    data.loc[data.ArtistName == artist, 'ArtistID'] = int(idx+1)

for idx, album in enumerate(data["AlbumName"].unique()):
    data.loc[data.AlbumName == album, 'AlbumID'] = int(idx+1)

cols = data.columns.tolist()
cols = cols[:2] + cols[-2:-1] + cols[2:3] + cols[-1:] + cols[3:-2]
data = data[cols]


genCommands(data)




#print(data)