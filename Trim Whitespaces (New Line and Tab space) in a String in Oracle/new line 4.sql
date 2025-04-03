--TThis code aims to find and remove whitespace characters, including newline (chr(10)), tab (chr(11)), and carriage return (chr(13)), 
update CIS2.RENIM
------------------------------------
SET 

----------------------------
--What is more correctly 
-- use this 
DENUMIRE = TRIM(translate(DENUMIRE, chr(10)||chr(11)||chr(13), '    ')),

  IDNO = TRIM(translate(IDNO, chr(10)||chr(11)||chr(13), '    '))
-------------------------------

--or use this   
  
--  DENUMIRE = REPLACE(REPLACE(REPLACE(DENUMIRE, CHR(10), ''), CHR(11), ''), CHR(13), ''),
--   IDNO = REPLACE(REPLACE(REPLACE(IDNO, CHR(10), ''), CHR(11), ''), CHR(13), '')
  
    
where 

(

instr(DENUMIRE, chr(13)) > 0
OR 
instr(DENUMIRE, chr(10)) > 0
OR 
instr(DENUMIRE, chr(11)) > 0

)



OR 

(
instr(IDNO, chr(13)) > 0
OR 
instr(IDNO, chr(10)) > 0
OR 
instr(IDNO, chr(11)) > 0

)

AND CUIIO = 10065422

;

--It is possible to improve this code 