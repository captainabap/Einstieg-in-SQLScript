-- Listing 6.17.sql
-- Beispiel f�r eine globale tempor�re Tabelle

CREATE GLOBAL TEMPORARY TABLE test_gtt (id INT, 
                                        text NVARCHAR(40));
INSERT INTO test_gtt ( SELECT id,  titel FROM aufgaben);
SELECT * FROM test_gtt;
