-- Calcolare le coppie di bevitori che risiedono nello
-- stesso indirizzo

SELECT  A.nome AS Nome1 , B.nome AS Nome2
FROM bevitore A ,bevitore B 
WHERE A.nome < B.nome  AND A.indirizzo = B.indirizzo