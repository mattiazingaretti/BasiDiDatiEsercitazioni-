-- Mostrare i garage che non hanno mai custodito automobili immatricolate a Roma.

SELECT C.codgarage
FROM custodita C, automobile A
WHERE C.targaauto=A.targa AND 'Roma' NOT IN (	
												SELECT A1.citta
												FROM custodita C1, automobile A1 
												WHERE C1.targaauto=A1.targa AND C1.codgarage=C.codgarage
											)
											

