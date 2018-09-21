-- Listing 3.16.sql
-- Aggregation mit Gruppierung �ber zwei Spalten



SELECT projekt,
   bearbeiter,
   sum(ist_aufwand)
FROM aufgaben
GROUP BY projekt,
   bearbeiter
ORDER BY projekt,
   bearbeiter;
