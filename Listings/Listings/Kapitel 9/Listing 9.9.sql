-- Listing 9.9.sql
-- Pr�fung auf Steuerzeichen
outtab   = SELECT * FROM :intab;
errortab = SELECT 'Feldinhalt pr�fen!'  AS ERROR_TEXT,
                  SQL__PROCEDURE__SOURCE__RECORD
             FROM :intab
             WHERE text LIKE_REGEXPR '.*[[cntrl]].*'
                OR text LIKE '!%'
                OR text = '#';
