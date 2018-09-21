-- Listing 3.46.sql
-- Beispiel f�r die Verwendung von INTERSECT
 
 
 
--Abfrage aller Benutzer, die Projektleiter sind und eine 
--Aufgabe zur Bearbeitung zugewiesen haben. 
--Zun�chst mit INTERSECT:
SELECT bearbeiter
FROM aufgaben
INTERSECT
SELECT projektleiter
FROM projekte;

--Und als INNER JOIN:
SELECT DISTINCT bearbeiter
FROM aufgaben
INNER JOIN projekte
   ON bearbeiter = projektleiter;
