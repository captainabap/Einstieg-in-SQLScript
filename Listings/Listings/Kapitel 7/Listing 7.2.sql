-- Listing 7.2.sql
-- Beispiel f�r Einschr�nkungen auf einzelnen Spalten

CREATE TABLE status (id INT PRIMARY KEY, 
                     sortiernr INT NOT NULL UNIQUE,
                     text NVARCHAR(30) );
