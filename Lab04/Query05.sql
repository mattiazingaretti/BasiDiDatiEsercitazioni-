-- Per ogni automobile che è stata custodita almeno una volta in un garage che si trova
-- nella città di immatricolazione dell’automobile, mostrare la targa ed il numero
-- complessivo di volte in cui l’automobile è stata custodita in un garage che si trova
-- nella città di immatricolazione dell’automobile


SELECT T.targa, SUM(T.numero)
FROM (SELECT *
FROM automobile A 
JOIN custodita C ON C.targaauto=A.targa
JOIN garage G ON C.codgarage=G.codice
WHERE A.citta = G.citta AND C.numero > 0 ) T
GROUP BY T.targa


