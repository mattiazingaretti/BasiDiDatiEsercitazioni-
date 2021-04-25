-- Mostrare i garage che hanno custodito
--  solo automobili immatricolate nella stessa
-- città in cui trova il garage


SELECT DISTINCT C.codgarage
FROM custodita C 
JOIN automobile A ON C.targaauto=A.targa 
JOIN garage G ON G.codice=C.codgarage
WHERE G.citta = all (
                                    SELECT A1.citta 
                                    FROM custodita C1
                                    JOIN automobile A1 ON A1.targa=C1.targaauto
                                    WHERE C1.codgarage=C.codgarage
                                 )