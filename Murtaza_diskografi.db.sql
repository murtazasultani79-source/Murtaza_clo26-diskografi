BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Albums" (
	"album_id"	INTEGER,
	"artist_id"	INTEGER NOT NULL,
	"title"	TEXT NOT NULL,
	"release_year"	INTEGER,
	PRIMARY KEY("album_id"),
	FOREIGN KEY("artist_id") REFERENCES "Artists"("artist_id")
);
CREATE TABLE IF NOT EXISTS "Artists" (
	"artist_id"	INTEGER,
	"name"	TEXT NOT NULL,
	PRIMARY KEY("artist_id")
);
CREATE TABLE IF NOT EXISTS "Genres" (
	"genre_id"	INTEGER,
	"name"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("genre_id")
);
CREATE TABLE IF NOT EXISTS "SongGenres" (
	"song_id"	INTEGER NOT NULL,
	"genre_id"	INTEGER NOT NULL,
	PRIMARY KEY("song_id","genre_id"),
	FOREIGN KEY("genre_id") REFERENCES "Genres"("genre_id"),
	FOREIGN KEY("song_id") REFERENCES "Songs"("song_id")
);
CREATE TABLE IF NOT EXISTS "Songs" (
	"song_id"	INTEGER,
	"album_id"	INTEGER NOT NULL,
	"title"	TEXT NOT NULL,
	"duration_seconds"	INTEGER NOT NULL,
	PRIMARY KEY("song_id"),
	FOREIGN KEY("album_id") REFERENCES "Albums"("album_id")
);
INSERT INTO "Albums" VALUES (1,1,'Najshakar',2026);
INSERT INTO "Albums" VALUES (2,1,'Habibi',2012);
INSERT INTO "Albums" VALUES (3,1,'Labkhand Bezan',2023);
INSERT INTO "Albums" VALUES (4,1,'låten 2027 Snart kommer ',2027);
INSERT INTO "Artists" VALUES (1,'Aryana');
INSERT INTO "Genres" VALUES (1,'Pop');
INSERT INTO "Genres" VALUES (2,'Folk');
INSERT INTO "Genres" VALUES (3,'Traditionell afghansk musik');
INSERT INTO "Genres" VALUES (4,'Romantisk musik');
INSERT INTO "SongGenres" VALUES (1,1);
INSERT INTO "SongGenres" VALUES (2,1);
INSERT INTO "SongGenres" VALUES (3,1);
INSERT INTO "SongGenres" VALUES (1,2);
INSERT INTO "Songs" VALUES (1,1,'Deewana',198);
INSERT INTO "Songs" VALUES (2,1,'Zan Zindagi',306);
INSERT INTO "Songs" VALUES (3,1,'Yaad Sajan',299);
INSERT INTO "Songs" VALUES (4,2,'Ya Habibi',215);
INSERT INTO "Songs" VALUES (5,2,'Jelwa',314);
INSERT INTO "Songs" VALUES (6,2,'Hairanam',250);
INSERT INTO "Songs" VALUES (7,3,'Yaar Bamiyani',260);
INSERT INTO "Songs" VALUES (8,3,'Baby Bye Bye',357);
INSERT INTO "Songs" VALUES (9,3,'Afghan Pesarak',257);
INSERT INTO "Songs" VALUES (10,1,'Tu Biya',332);
COMMIT;
