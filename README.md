# Inlämning 1 — Din favoritartists diskografi

**Kurs:** CLO26 — Cloud Developer  
**Deadline:** Onsdag 21 oktober 23:59

---

## Uppgiften

Du ska bygga en normaliserad SQL-databas för en artists diskografi.  
Välj en artist du faktiskt gillar — det märks om du bryr dig.


---

## Vad du ska göra

1. Forka det här repot
2. Döp din fork till `förnamn-clo26-diskografi` — t.ex. `betty-clo26-diskografi`
3. Fyll i `SQL-inlamning.md` med din SQL-kod
4. Fyll i `reflektion.md`
5. Zippa hela mappen och lämna in på Google Classroom

---

## Queries du ska skriva

Skriv alla queries i `SQL-inlamning.md`.

**G — queries 1–5**

1. Lista alla album, sorterade efter utgivningsår
2. Lista alla låtar på ett specifikt album (du väljer vilket)
3. Visa hur många låtar varje album innehåller
4. Hitta den längsta låten i hela databasen
5. Lista alla låtar i alfabetisk ordning

**VG — queries 6–8**

6. Beräkna snittlängden på låtarna per album
7. Vilket album har flest låtar?
8. Lista alla låtar längre än 4 minuter (240 sekunder) — visa även albumtiteln

---

## Krav

### G — Godkänt

- [ ] Minst 3 tabeller med primary keys och foreign keys
- [ ] Minst 3 album med minst 3 låtar vardera
- [ ] Normaliserad till 3NF
- [ ] ER-diagram finns med i inlämningen
- [ ] Queries 1–5 skrivna och fungerar
- [ ] Minst en ny rad tillagd med INSERT
- [ ] Minst en rad borttagen med DELETE
- [ ] Minst en rad uppdaterad med UPDATE

### VG — Väl godkänt

Allt i G, plus:

- [ ] Queries 6–8 skrivna och fungerar
- [ ] Du kan muntligt förklara varför du valde din tabellstruktur
- [ ] Du kan förklara vad som händer i en JOIN
- [ ] Databasen har minst ett many-to-many-förhållande (t.ex. låt ↔ genre, artist ↔ tour)

---

## Filer

| Fil | Vad du gör med den |
|-----|-------------------|
| `SQL-inlamning.md` | Skriv all din SQL-kod här |
| `reflektion.md` | Fyll i reflektionen |

Ingen rapport behövs.
