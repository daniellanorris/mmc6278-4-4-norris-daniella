CREATE DATABASE IF NOT EXISTS music_db;

USE music_db;

CREATE TABLE artists (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100)
);

CREATE TABLE albums (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  artist_id INT,
  release_year INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE
);

CREATE TABLE songs (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  track_number INT,
  artist_id INT,
  album_id INT,
  FOREIGN KEY (artist_id)
    REFERENCES artists (id)
    ON DELETE CASCADE,
  FOREIGN KEY (album_id)
    REFERENCES albums (id)
    ON DELETE CASCADE
);

-- Remember to use a comma BETWEEN each line!

-- NOTE: The foreign key constraints above ensure that when, for example,
-- an artist is deleted, that artist's songs and albums are also removed.
-- When an album is removed, that album's songs are also removed.
 INSTRUCTIONS.md
 db.js
 db_check.js
 index.js
 package-lock.json
 package.json
 queries/01-artists.sql
 queries/02-alias.sql
 queries/03-count-albums.sql
 queries/04-where-clause.sql
 queries/05-join-artist-album.sql
 queries/06-insert.sql
 queries/07-update.sql
 queries/08-count-albums-by-artist.sql
 queries/09-dbl-join.sql
 queries/10-count-album-tracks.sql
 queries/11-delete.sql
 schema/schema.sql
 schema/seed.sql
 test/results.js
 test/test.js