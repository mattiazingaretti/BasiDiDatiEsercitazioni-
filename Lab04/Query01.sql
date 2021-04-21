-- Per ogni automobile e per ogni garage in cui l’automobile è stata custodita una volta,
-- mostrare la targa dell’automobile, il codice del garage e la città in cui il garage si
-- trova.

SELECT C.targaauto, C.codgarage, G.citta 
FROM custodita C
JOIN garage G ON C.codgarage = G.codice
WHERE C.numero = 1

