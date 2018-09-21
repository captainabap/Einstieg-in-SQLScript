-- Listing 10.1.sql
-- Beispiel f�r Komplexit�t in einfachen Abfragen
 
SELECT id,
   -- Name formatieren
   nachname || ', ' || vorname AS name,
   -- Symbol f�r das Geschlecht
   CASE 
      WHEN geschlecht = 'F'
         THEN NCHAR('9792')
      WHEN geschlecht = 'M'
         THEN NCHAR('9794')
      ELSE ''
      END AS MW,
   -- Text f�r das Team hinzuf�gen
   COALESCE((
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND sprache = 'DE'
         ), (
         SELECT team_text
         FROM team_text
         WHERE ID = team
            AND sprache = 'EN'
         ), '') AS team
FROM benutzer;
