






 SELECT D.*   
 FROM CIS2.DATA_ALL_FR D
 
 WHERE 
 D.PERIOADA = :pPERIOADA --2009
 
 AND D.FORM = :pFORM --57
 --AND D.CUIIO = :pCUIIO -- 40940486, 28392779  
 AND D.CUIIO IN   (40940486,28392779)
 AND (
 
 REGEXP_LIKE (D.COL1, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL16, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL2, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL3, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL4, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL5, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL6, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL7, '[[:alpha:]]')
OR 
REGEXP_LIKE (D.COL8, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL9, '[[:alpha:]]')


OR 
REGEXP_LIKE (D.COL10, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL11, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL12, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL13, '[[:alpha:]]')


OR 
REGEXP_LIKE (D.COL14, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL15, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL16, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL17, '[[:alpha:]]')


OR 
REGEXP_LIKE (D.COL18, '[[:alpha:]]')

OR 
REGEXP_LIKE (D.COL19, '[[:alpha:]]')
 )
 