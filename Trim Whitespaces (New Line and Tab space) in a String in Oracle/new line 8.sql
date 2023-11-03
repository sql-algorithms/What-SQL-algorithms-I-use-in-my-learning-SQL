--update CIS2.MD_CONTROL
--
--SET FORMULA = TRIM(translate(FORMULA, chr(10)||chr(11)||chr(13), '    '))
--
--    IDNO = TRIM(translate(IDNO, chr(10)||chr(11)||chr(13), '    '))



select 
  CONTROL,
  CONTROL_VERS
--  FORM,
--  FORM_VERS,
--  CAPITOL,
--  CAPITOL_VERS,
--  ID_MD,
--  FORMULA,
--  SQL_TEXT,
--  PRIORITATEA,
--  DATA_REG,
--  STATUT      


from -- CIS2.MD_CONTROL
USER_EREPORTING.MD_CONTROL



where 

(

instr(FORMULA, chr(13)) > 0
OR 
instr(FORMULA, chr(10)) > 0
OR 
instr(FORMULA, chr(11)) > 0

)


--
--OR 
--
--(
--instr(IDNO, chr(13)) > 0
--OR 
--instr(IDNO, chr(10)) > 0
--OR 
--instr(IDNO, chr(11)) > 0
--
--)
--
--AND CUIIO = 10065422


--ORDER BY 
--  CONTROL,
--  CONTROL_VERS
;