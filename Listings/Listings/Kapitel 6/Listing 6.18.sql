-- Listing 6.18.sql
-- Beispiel f�r eine lokale tempor�re Tabelle

CREATE LOCAL TEMPORARY TABLE #test_ltt (id INT, 
                                        text NVARCHAR(40));
INSERT INTO #test_ltt ( SELECT id,  titel FROM aufgaben);
SELECT * FROM #test_ltt;
