-- Listing 3.7.sql
-- Operatorausdr�cke in der Feldliste der SELECT-Anweisung
 
 
 
SELECT id || ' - ' || titel AS Aufgabe,
   plan_aufwand,
   ist_aufwand,
   round(ist_aufwand / plan_aufwand * 100, 0) 
                  || ' %' AS zeitverbrauch,
   fertigstellung || ' %' AS fertigstellung
FROM aufgaben;      
