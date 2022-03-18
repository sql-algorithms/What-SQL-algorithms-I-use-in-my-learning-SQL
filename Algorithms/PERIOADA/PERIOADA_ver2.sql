SELECT 

    D.CUIIO,
    CIS.NVAL(SUM(CASE WHEN  D.FORM IN (1) AND D.CAPITOL IN (2) AND D.RIND IN ('0100') THEN D.COL1  ELSE  NULL END))  AS COL5

FROM
  CIS.VW_DATA_ALL D 
  
            INNER JOIN (
            
            SELECT 
 P.ANUL,
 P.PERIOADA

FROM CIS.MD_PERIOADA P

inner join (
SELECT  
       P.ANUL,   
       P.PERIOADA,
       P.TIP_PERIOADA,
       P.NUM,
       CASE 
       when P.NUM =   9 then 3
       when P.NUM =   1 then 1
       when P.NUM =   6 then 2
       when P.NUM =   12 then 4
                END AS trim_NUM
                
                
           
           FROM CIS.MD_PERIOADA P 
            WHERE 
           P.PERIOADA = :pPERIOADA ) PP ON PP.trim_NUM = P.NUM 
                                    AND PP.ANUL = P.ANUL 
                                    AND P.TIP_PERIOADA = 5
           
           
            
            
            ) PP ON PP.ANUL = D.ANUL 
  
          
  WHERE 
  
  ((D.PERIOADA = PP.PERIOADA)) AND 
  (D.FORM = 1) AND
  (D.FORM_VERS = 1004) AND
  (:pID_MDTABLE=:pID_MDTABLE) AND
  (D.CUATM_FULL LIKE '%'||:pCOD_CUATM||';%') AND
  
  (D.FORM IN (1) AND D.CAPITOL IN (2))
  
  
  GROUP BY
  
  D.CUIIO