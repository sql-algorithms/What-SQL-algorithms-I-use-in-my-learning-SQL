UPDATE CIS2.RENIM
SET denumire = REGEXP_REPLACE(denumire, '[[:cntrl:]]', ''),
IDNO = REGEXP_REPLACE(IDNO, '[[:cntrl:]]', '')
WHERE 
REGEXP_LIKE(denumire, '[[:cntrl:]]')
OR 
IDNO = REGEXP_REPLACE(IDNO, '[[:cntrl:]]', '')
AND CUIIO_VERS = 2014

;


SELECT * 
FROM CIS2.RENIM
WHERE 
REGEXP_LIKE(denumire, '[[:cntrl:]]')
OR 
REGEXP_LIKE(IDNO, '[[:cntrl:]]')
AND CUIIO_VERS = 2014;