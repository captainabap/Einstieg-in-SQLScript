-- Listing 7.7.sql
-- Beispiel f�r die �nderung von Tabelleneigenschaften

CREATE ROW TABLE demo_table(
    col1 INT,
    col2 INT
);

--Hinzuf�gen einer Spalte
ALTER TABLE demo_table ADD (col3 VARCHAR(20));

--�ndern von Spalteneigenschaften, z.B. Standardwert setzen:
ALTER TABLE demo_table ALTER (col1 INT DEFAULT 42);

--Hinzuf�gen der Prim�rschl�sseldefinition:
ALTER TABLE demo_table 
            ADD CONSTRAINT pk PRIMARY KEY (col1, col2);

--�ndern des Typs:
ALTER TABLE demo_table COLUMN;

