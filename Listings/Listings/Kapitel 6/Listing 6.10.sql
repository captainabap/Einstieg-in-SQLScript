-- Listing 6.10.sql
-- Beispiel f�r das zeilenweise Einf�gen in eine Tabellenvariable mit INSERT

DO (OUT rt_result TABLE( id INT, 
                         text1 NVARCHAR(50),
                         text2 NVARCHAR(50))=>? )
BEGIN
   DECLARE lv_index INT;

   FOR lv_index IN 1..5
   DO
-- Einf�gen aller Spalten an der Position 1
      :rt_result.INSERT((lv_index, 
                         'Einf�gen '||lv_index, '')
                         , 1);
   END FOR;
   
   FOR lv_index IN 1..5
   DO
-- Anh�ngen an die Tabelle, nur f�r zwei Spalten
      :rt_result.(id, text2).INSERT((lv_index, 
                                     'Anh�ngen '||lv_index));
   END FOR;
END;
