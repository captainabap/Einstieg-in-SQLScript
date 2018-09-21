-- Listing 3.34.sql
-- Beispiele f�r das EXISTS-Pr�dikat
 
 
 
--1. Abfrage mit EXISTS-Pr�dikat
--   Alle Benutzer mit mindestens einer Aufgabe
SELECT *
FROM benutzer
WHERE EXISTS (
      SELECT bearbeiter
      FROM aufgaben
      WHERE aufgaben.bearbeiter = benutzer.id );

--2. Abfrage mit NOT EXISTS
--   Aufgaben, deren Status nicht in der Statustabelle steht
SELECT *
FROM aufgaben
WHERE NOT EXISTS (
      SELECT id
      FROM STATUS
      WHERE STATUS.id = aufgaben.STATUS );

--3. Analoge Abfrage mit NOT IN
SELECT *
FROM aufgaben
WHERE STATUS NOT IN (
      SELECT id
      FROM STATUS );
