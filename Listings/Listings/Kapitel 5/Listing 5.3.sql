-- Listing 5.3.sql
-- Beispiel f�r eine INSERT-Anweisung mit mehreren Datens�tzen
 
INSERT INTO tabelle_2 
       SELECT key1 + key2 * 100, 
              wert1, 
              'Einf�gen aus einer Abfrage'
       FROM tabelle_1;
