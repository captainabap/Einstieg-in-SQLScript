-- Listing 3.15.sql
-- Berechnung des Aufwands f�r alle Projekte

SELECT projekt,
       sum(ist_aufwand)
FROM aufgaben
GROUP BY projekt;
