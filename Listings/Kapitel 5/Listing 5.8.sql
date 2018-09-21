-- Listing 5.8.sql
-- Beispiel f�r das Einf�gen und Aktualisieren �ber den Prim�rschl�ssel

 
DELETE FROM tabelle_1;
DELETE FROM tabelle_2;
--Einf�gen einzelner S�tze 
UPSERT tabelle_1 VALUES(1, 1, 'Eingef�gt mit UPSERT') 
       WITH PRIMARY KEY;
UPSERT tabelle_1 VALUES(1, 2, 'Eingef�gt mit UPSERT') 
       WITH PRIMARY KEY;
UPSERT tabelle_1 VALUES(1, 3, 'Eingef�gt mit UPSERT') 
       WITH PRIMARY KEY;
--Aktualisieren eines Datensatzes �ber den Prim�rschl�ssel
UPSERT tabelle_1 VALUES(1, 2, 'Ge�ndert mit UPSERT') 
       WITH PRIMARY KEY;

SELECT * FROM tabelle_1;
