-- Listing 7.4.sql
-- Beispiel f�r einen zusammengesetzten Prim�rschl�ssel

CREATE TABLE test_composite_key (a INT, 
                                 b INT,
                                 c INT,
                                 PRIMARY KEY(a, b));
