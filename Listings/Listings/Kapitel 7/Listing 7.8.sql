-- Listing 7.8.sql
-- Beispiel f�r die Definition eines Tabellentyps und Verwendung in einer Prozedurdefinition

CREATE TYPE TESTTYP AS TABLE(
   col1 INT,
   col2 VARCHAR(10) ); 

   CREATE PROCEDURE TESTPROC(
        IN it_data TESTTYP )
...
