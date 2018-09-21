-- Listing 3.41.sql
-- Trennung von CASE und GROUP_BY



DO BEGIN
--1. Neue Spalte mit CASE-Ausdruck erzeugen 
   lt_select = SELECT CASE 
                     WHEN faelligkeit < to_date('2017-12-01')
                        AND status NOT IN ( 5, 6 )
                        THEN 'zu pruefen'
                     ELSE 'OK'
                     END AS "Pr�fen?"
               FROM aufgaben;
--2. Gruppierung nach der neuen Spalte 
   SELECT "Pr�fen?",
          count(*) as cnt
   FROM :lt_select
   GROUP BY "Pr�fen?";
END
