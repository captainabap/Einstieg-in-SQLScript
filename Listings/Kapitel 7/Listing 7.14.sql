-- Listing 7.14.sql
-- Parametrisierung f�r die zeilenweise Verarbeitung

CREATE TRIGGER rp_insert AFTER INSERT 
       ON rechnungspositionen
       REFERENCING NEW ROW ls_new 
       FOR EACH ROW
...
