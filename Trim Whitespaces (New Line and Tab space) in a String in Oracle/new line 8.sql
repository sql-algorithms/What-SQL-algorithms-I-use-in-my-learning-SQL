SELECT *
FROM USER_EREPORTING.F_XML_FORMS
WHERE DBMS_LOB.INSTR(XML, 'FILIAL') > 0;