-- Listing 7.3.sql
-- Beispiel f�r mehrere UNIQUE-Einschr�nkungen auf mehreren Spalten

CREATE TABLE test_unique (a INT, 
                          b INT,
                          c INT,
                          UNIQUE(a, b),
                          UNIQUE(b, c));
