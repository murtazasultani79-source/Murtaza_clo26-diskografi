# SQL-inlämning — Diskografi

**Namn:** [Murtaza]  
**Artist:** [Aryana sayeed]  
**Datum:** [2026-10-21]

---

> Lägg länk till eller bild på ditt ER-diagram här:
> `[ER-diagram](er_diagram.png)`

---

## 1. Skapa databasen — CREATE TABLE

```sql
--- CREATE TABLE IF NOT EXISTS Artists (
    artist_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
    album_id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    release_year INTEGER,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE IF NOT EXISTS Songs (
    song_id INTEGER PRIMARY KEY,
    album_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    duration_seconds INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE IF NOT EXISTS Genres (
    genre_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS SongGenres (
    song_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    PRIMARY KEY (song_id, genre_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
); ---

```

---

## 2. Seeda med data — INSERT

```sql
--- INSERT INTO Artists (artist_id, name)
VALUES (1, 'Aryana');

INSERT INTO Albums (album_id, artist_id, title, release_year)
VALUES
    (1, 1, 'Najshakar', 2026),
    (2, 1, 'Habibi', 2012),
    (3, 1, 'Labkhand Bezan', 2023),
    (4, 1, 'låten 2027 Snart kommer ', 2027);

INSERT INTO Songs (song_id, album_id, title, duration_seconds)
VALUES
    (1, 1, 'Deewana', 198),
    (2, 1, 'Zan Zindagi', 306),
    (3, 1, 'Yaad Sajan', 299),
    (4, 2, 'Ya Habibi', 215),
    (5, 2, 'Jelwa', 314),
    (6, 2, 'Hairanam', 250),
    (7, 3, 'Yaar Bamiyani', 260),
    (8, 3, 'Baby Bye Bye', 357),
    (9, 3, 'Afghan Pesarak', 257),
    (10, 1, 'Tu Biya', 332);

INSERT INTO Genres (genre_id, name)
VALUES
    (1, 'Pop'),
    (2, 'Folk'),
    (3, 'Traditionell afghansk musik'),
    (4, 'Romantisk musik');

INSERT INTO SongGenres (song_id, genre_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2); ---

```

---

## 3. Söka — SELECT

```sql
--- query 1: Lista alla album, sorterade efter år ---
SELECT title, release_year
FROM Albums
ORDER BY release_year ASC;


--- query 2: Lista alla låtar på ett specifikt album ---
SELECT title, duration_seconds
FROM Songs
WHERE album_id = 1;

--- query 3: Antal låtar per album ---
SELECT Albums.title, COUNT(Songs.song_id) AS SongCount
FROM Albums
LEFT JOIN Songs ON Albums.album_id = Songs.album_id
GROUP BY Albums.album_id, Albums.title
ORDER BY Albums.release_year ASC;

--- query 4: Längsta låten ---


--- query 5: Alla låtar sorterade alfabetiskt ---

```

---

## 4. Lägg till en ny rad — INSERT

```sql 
--- lägg till ett nytt album eller en ny låt ---

```

---

## 5. Ta bort en rad — DELETE

```sql
--- ta bort en rad ur valfri tabell ---

```

---

## 6. Uppdatera en rad — UPDATE

```sql
--- uppdatera minst en rad i valfri tabell ---

```

---

## 7. VG-queries (om du siktar på VG)

```sql
--- query 6: Snittlängd på låtar per album ---


--- query 7: Albumet med flest låtar ---


--- query 8: Alla låtar längre än 4 minuter (240 sekunder), med albumtitel ---

```
