-- Listing 3.36.sql
-- Pr�fung auf NULL


 
--1. Pr�fung mit dem NULL-Pr�dikat
SELECT *
FROM benutzer
WHERE vorname IS NULL;

--2. Achtung! Diese Abfrage liefert ein anderes Ergebnis!
SELECT *
FROM benutzer
WHERE vorname = NULL; --Falsch! Nicht verwenden!
