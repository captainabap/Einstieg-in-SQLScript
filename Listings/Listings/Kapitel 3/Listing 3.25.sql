-- Listing 3.25.sql
-- Cross Join �ber Farben und Gr��en
 
 
--Kreuzprodukt mit CROSS JOIN
SELECT *
FROM farben
CROSS JOIN groessen;

--Kreuzprodukt nur mit Komma in der FROM-Klausel
SELECT *
FROM farben,
   groessen;
