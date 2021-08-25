select DISTINCT 
 CUIIO,
 COL1, 
 COL2,
 COL3,
 COL4
 

from CIS2.DATA_ALL_FR



where 

 PERIOADA = :pPERIOADA 
 
AND FORM = :pFORM
---- 
----
----OR 
--(
--
--instr(COL1, chr(13)) > 0
--OR 
--instr(COL1, chr(10)) > 0
--OR 
--instr(COL1, chr(11)) > 0
--
--)
--
--OR 
--(
--
--instr(COL2, chr(13)) > 0
--OR 
--instr(COL2, chr(10)) > 0
--OR 
--instr(COL2, chr(11)) > 0
--
--)
--
--OR  
(
 
 REGEXP_LIKE (COL1, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL16, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL2, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL3, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL4, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL5, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL6, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL7, '[[:alpha:]]')
OR 
REGEXP_LIKE (COL8, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL9, '[[:alpha:]]')


OR 
REGEXP_LIKE (COL10, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL11, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL12, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL13, '[[:alpha:]]')


OR 
REGEXP_LIKE (COL14, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL15, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL16, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL17, '[[:alpha:]]')


OR 
REGEXP_LIKE (COL18, '[[:alpha:]]')

OR 
REGEXP_LIKE (COL19, '[[:alpha:]]')
 )

--AND CUIIO_VERS < 2000

;