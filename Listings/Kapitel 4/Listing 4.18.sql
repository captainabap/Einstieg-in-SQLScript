-- Listing 4.18.sql
-- Beispiel f�r die SQL-Funktion HAMMING_DISTANCE()

SELECT *
   FROM benutzer
   WHERE HAMMING_DISTANCE(vorname, 'Mandy') BETWEEN 0 and 1;
