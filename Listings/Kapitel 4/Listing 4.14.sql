-- Listing 4.14.sql
-- Beispiel f�r Suchen und Ersetzen mit regul�ren Ausdr�cken

CREATE TABLE mitarbeiter (namen NVARCHAR(60));

INSERT INTO mitarbeiter VALUES ('Joerg Brandeis');
INSERT INTO mitarbeiter VALUES ('Peter Mueller');
INSERT INTO mitarbeiter VALUES ('Michael Maier');
INSERT INTO mitarbeiter VALUES ('Superman');

SELECT REPLACE_REGEXPR(
      '([[:graph:]]+)[[:blank:]]+([[:graph:]]+)' IN namen
      WITH 'Nachname: \2 Vorname: \1')
FROM mitarbeiter;

DROP TABLE mitarbeiter;
