-- Listing 3.4.sql
-- Beispiel f�r die Verwendung von Alias-Namen f�r Spalten



SELECT '1' AS counter,
       "NAME.FIRST"  AS vorname,
       "NAME.LAST" AS nachname
FROM "sap.hana.democontent.epm.data::MD.Employees";
