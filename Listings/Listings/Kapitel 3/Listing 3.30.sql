-- Listing 3.30.sql
-- Verwendung von NOT LIKE
 
 
 
--1. Negierung des ganzen Pr�dikats
SELECT count(*)
FROM aufgaben
WHERE NOT ( titel LIKE '%Aliquam%' );

--2. �quivalente Abfrage mit NOT LIKE
SELECT count(*)
FROM aufgaben
WHERE titel NOT LIKE '%Aliquam%';

