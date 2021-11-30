# CSE412Project

Database dump:
'database_dump.sql' is a dump of our database created using pg_dump with the following command '.\pg_dump.exe -U postgres -W -F t postgres > database_dump.sql'

Restoring the dump:
This can then be used to restore the database by the following command 'psql dbname < database_dump.sql'
guide can be followed here 'https://www.postgresql.org/docs/8.0/backup.html#BACKUP-DUMP-RESTORE'

Alternatively create the full database:
Alternative to the dump, you can create the full playlist by starting with an empty postgres database that is called public, then you can run the sql
script 'create_full_database.sql', this may take a while, but it will create the full database

Search Standardized Return:
song_name   album.name  artist.name song.date_created   song_is_genre.name