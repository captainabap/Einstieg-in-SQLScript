-- Listing 4.19.sql
-- Suche mit regul�ren Ausdr�cken

SELECT *
   FROM benutzer
   WHERE nachname LIKE_REGEXPR 'M(a|e)(i|y)(a|er)';
