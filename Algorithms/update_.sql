
SELECT 46456 AS CUIIO, 456 AS PACHET FROM DUAL
UNION ALL
SELECT 46456 AS CUIIO, NULL AS PACHET FROM DUAL
UNION ALL
SELECT 46456 AS CUIIO, 456 AS PACHET FROM DUAL
UNION ALL
SELECT 46456 AS CUIIO, NULL AS PACHET FROM DUAL
UNION ALL
SELECT 234563 AS CUIIO, 345 AS PACHET FROM DUAL
UNION ALL
SELECT 234563 AS CUIIO, NULL AS PACHET FROM DUAL
UNION ALL
SELECT 234563 AS CUIIO, 345 AS PACHET FROM DUAL
UNION ALL
SELECT 234563 AS CUIIO, NULL AS PACHET FROM DUAL


--CUIIO IS PK


--The table has 8 rows and 2 columns. How for each row with the same column (CUIIO ) in the PACKAGE column if it is NULL, to add the value from the non-null column