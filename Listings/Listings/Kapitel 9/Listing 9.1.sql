-- Listing 9.1.sql
-- Vergabe einer laufenden Nummer f�r das Feld RECORD f�r die Sortierung
outtab = SELECT ...          
       LPAD( RANK() OVER (ORDER BY <Sortierung>), 56, '0') 
                                               AS "RECORD",
       SQL__PROCEDURE__SOURCE__RECORD
       FROM :intab ;
