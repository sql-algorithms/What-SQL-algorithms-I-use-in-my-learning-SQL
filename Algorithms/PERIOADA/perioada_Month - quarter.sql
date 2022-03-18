SELECT 
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
           
           