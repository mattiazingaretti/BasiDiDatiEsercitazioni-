--Mostrare i garage attivi che hanno custodito
-- solo automobili immatricolate a Roma
SELECT DISTINCT C.codgarage
FROM custodita C 
JOIN automobile A ON C.targaauto=A.targa
WHERE C.numero > 0 AND 'Roma' = all (
                                    SELECT A1.citta 
                                    FROM custodita C1
                                    JOIN automobile A1 ON A1.targa=C1.targaauto
                                    WHERE C1.codgarage=C.codgarage
                                 )
