-- Per ogni città e per ogni automobile con cilindrata maggiore di 100 custodita in
-- almeno un garage di quella città per più di 10 volte, mostrare il nome della città e la
-- targa dell’automobile, evitando ripetizioni nel risultato.

SELECT DISTINCT A.citta , A.targa
FROM automobile A 
JOIN custodita C ON A.targa=C.targaauto
JOIN garage G ON C.codgarage = G.codice
WHERE A.cilindrata > 100 AND C.numero IS NOT NULL AND G.citta=A.citta
