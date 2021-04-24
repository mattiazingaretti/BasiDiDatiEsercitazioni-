-- Mostrare i garage che non hanno mai custodito automobili immatricolate nella
-- stessa città in cui si trova il garage.

SELECT DISTINCT G.codice
FROM custodita C , garage G , automobile A 
WHERE C.targaauto=A.targa AND C.codgarage=G.codice AND G.citta NOT IN (
																		SELECT A1.citta
																		FROM  custodita C1, automobile A1 
																		WHERE C1.codgarage=G.codice AND A1.targa=C1.targaauto 
																		)


																		