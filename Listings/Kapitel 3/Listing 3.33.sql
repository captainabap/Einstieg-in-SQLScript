-- Listing 3.33.sql
-- Beispiele f�r die Nutzung des IN-Pr�dikat


 
--1. Abfrage f�r eine Spalte mit mehreren Werten mit OR
SELECT *
FROM benutzer
WHERE vorname = 'Aldo'
   OR vorname = 'Elvin'
   OR vorname = 'Sascha';

--2. Analoge Abfrage mit dem IN-Pr�dikat
SELECT *
FROM benutzer 
WHERE vorname IN ( 'Aldo', 'Elvin', 'Sascha' );

--3. Nutzung einer Unterabfrage mit dem IN-Pr�dikat: 
--   Benutzer, denen aktuell keine Aufgabe zugeordnet ist
SELECT *
FROM benutzer
WHERE id NOT IN ( SELECT DISTINCT bearbeiter
                  FROM aufgaben );
