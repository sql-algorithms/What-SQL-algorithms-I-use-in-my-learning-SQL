--How find  Whitespaces (New Line and Tab space) in text field 
-- in Oracle  and how  remove that ? 
--Like this code ot exist more good ?



select 
CONTROL,       
CONTROL_VERS,     
TRIM(translate(FORMULA, chr(10)||chr(11)||chr(13), '    ')) FORMULA,
FORMULA FORMULA_wrong


from USER_EREPORTING.MD_CONTROL



where 

(

instr(FORMULA, chr(13)) > 0
OR 
instr(FORMULA, chr(10)) > 0
OR 
instr(FORMULA, chr(11)) > 0

);


update USER_EREPORTING.MD_CONTROL

SET FORMULA = TRIM(translate(FORMULA, chr(10)||chr(11)||chr(13), '    '))

    

where 

(

instr(FORMULA, chr(13)) > 0
OR 
instr(FORMULA, chr(10)) > 0
OR 
instr(FORMULA, chr(11)) > 0

)



