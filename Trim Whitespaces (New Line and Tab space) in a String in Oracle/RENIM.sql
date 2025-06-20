SELECT FC.CUIIO,
       FC.CUIIO_VERS,
       R.CUATM,
       R.DENUMIRE,
       R.IDNO  
              FROM(
              SELECT FC.CUIIO,
                   FC.CUIIO_VERS,
                   FC.FORM,
                   FC.FORM_VERS,
                   FC.STATUT
              FROM CIS2.FORM_CUIIO  FC
                   INNER JOIN (  SELECT CUIIO, MAX (CUIIO_VERS) CUIIO_VERS
                                   FROM CIS2.FORM_CUIIO
                                  WHERE FORM IN (:pFORM) AND CUIIO_VERS <= :pPERIOADA
                                  
                               GROUP BY CUIIO) BB
                       ON (    BB.CUIIO = FC.CUIIO
                           AND BB.CUIIO_VERS = FC.CUIIO_VERS)
             WHERE 
             FC.FORM IN (:pFORM) AND FC.STATUT <> '3' ) FC
             
             
             INNER JOIN CIS2.RENIM R ON R.CUIIO = FC.CUIIO AND R.CUIIO_VERS = FC.CUIIO_VERS
             INNER JOIN CIS2.VW_CL_CUATM C ON C.CODUL = R.CUATM
             
             WHERE
             
             C.FULL_CODE LIKE '%'||:pCUATM||';%'
             --FC.CUIIO_VERS = 1064
            

 
             
            -- CUIIO LIKE :pCUIIO||'%' AND 

AND FC.FORM IN (43)


--AND FC.CUIIO_VERS = 2012

AND 
(REGEXP_LIKE(R.denumire, '[[:cntrl:]]')
OR
REGEXP_LIKE(R.idno, '[[:cntrl:]]')
) 

order by
R.DENUMIRE
 ;
