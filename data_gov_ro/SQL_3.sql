SELECT 
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 1) AS COL1,
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 2) AS COL2,
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 3) AS COL3,
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 4) AS COL4,
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 5) AS COL5,
REGEXP_SUBSTR(DENUMIRE, '[^''^'']+', 1, 6) AS COL6

FROM USER_BANCU.DATA_GOV_RO