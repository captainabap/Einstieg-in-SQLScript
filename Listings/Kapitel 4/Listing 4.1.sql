-- Listing 4.1.sql
-- Beispiel f�r das Verhalten des Datentyps VARCHAR

CREATE TABLE tab1  (
     row_nr INT,
     col_alphanum ALPHANUM(4),
     col_varchar VARCHAR(4),
     col_nvarchar NVARCHAR(4)
  );

INSERT INTO tab1 VALUES ( 1,'?'   , '?'  , '?'   );
INSERT INTO tab1 VALUES ( 2,'??' , '??', '??' );
INSERT INTO tab1 VALUES ( 3,'abcd' , 'abcd', 'abcd' );
INSERT INTO tab1 VALUES ( 4,'J�rg' , 'J�rg', 'J�rg' );
INSERT INTO tab1 VALUES ( 5,'��'   , '��'  , '��'   );

SELECT row_nr,
       col_alphanum,
       col_varchar,
       col_nvarchar,
       TO_NVARCHAR(col_varchar) AS decoded
       FROM   tab1 ;

DROP TABLE tab1;
