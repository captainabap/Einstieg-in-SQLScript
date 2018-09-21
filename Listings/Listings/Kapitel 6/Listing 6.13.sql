-- Listing 6.13.sql
-- Beispiele f�r die unterschiedlichen Varianten des L�schens von Zeilen aus einer Tabellenvariablen

DO (OUT ot_result TABLE(text NVARCHAR(100))=>?) 
BEGIN 
   DECLARE lv_index INT;
   DECLARE lv_del INT ARRAY = ARRAY(1, 3);
   
-- Aufbau einer Tabelle mit den Zeilen 1 bis 10
   FOR lv_index IN 1..10 DO
      :ot_result.INSERT(('Zeile '||lv_index), lv_index);
   END FOR;
   
-- L�schender Zeile 9   
   :ot_result.DELETE(9);
   
-- L�schen der Zeilen 5 bis 7   
   :ot_result.DELETE(5..7);
   
-- L�schen der Zeilen 1 und 3 aus dem ARRAY LV_DEL   
   :ot_result.DELETE(:lv_del);
   
END;
