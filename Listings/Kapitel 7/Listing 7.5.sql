-- Listing 7.5.sql
-- Automatische Nummernvergabe

CREATE COLUMN TABLE test_identity (
                   a INT GENERATED BY DEFAULT AS IDENTITY, 
                   b VARCHAR(10));

INSERT INTO test_identity (b) VALUES ('Eins');
INSERT INTO test_identity (b) VALUES ('Zwei');
INSERT INTO test_identity (a,b) VALUES (3, 'Drei');
INSERT INTO test_identity (b) VALUES ('Vier');

SELECT * FROM test_identity;
