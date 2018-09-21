-- Listing 3.29.sql
-- Beispiele f�r die Verwendung von Vergleichspr�dikaten


 
--1. Alle Aufgaben mit einem Status kleiner/gleich 3
SELECT *
FROM aufgaben
WHERE STATUS <= 3;

--2. Alle Aufgaben, die im Status 1, 2 oder 4 sind
SELECT *
FROM aufgaben
WHERE STATUS = ANY ( 1, 2, 4 );

--3. Alle Aufgaben, die in einem finalen Status sind
SELECT *
FROM aufgaben
WHERE STATUS = ANY ( SELECT id
                     FROM STATUS
                     WHERE is_final = true  );

--4. Alle Aufgaben, die nicht in einem finalen Status sind
SELECT *
FROM aufgaben
WHERE STATUS <> ALL ( SELECT id
                      FROM STATUS
                      WHERE is_final = true );
