-- Listing 3.40.sql
-- Beispiel f�r einen CASE-Ausdruck in der GROUP BY-Klausel



SELECT CASE 
         WHEN faelligkeit < to_date('2017-12-01')
            AND status NOT IN ( 5, 6 )
            THEN 'zu pruefen'
         ELSE 'OK'
      END AS "Pr�fen?",
   count(*) AS cnt
FROM aufgaben
GROUP BY CASE 
            WHEN faelligkeit < to_date('2017-12-01')
               AND status NOT IN ( 5, 6 )
               THEN 'zu pruefen'
            ELSE 'OK'
         END;
