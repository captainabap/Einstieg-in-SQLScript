-- Listing 4.3.sql
-- Ermittlung der L�nge von Zeichenketten

SELECT length('')               AS length_space,
       length('Peter')          AS length_peter,
       length('J�rg')           AS length_joerg,
       length('?')             AS length_china,
       length(to_varchar('?')) AS lenght_china_vc
FROM   dummy;
