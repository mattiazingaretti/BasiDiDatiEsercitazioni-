-- QUERY 2
-- Calcolare il nome e l'indirizzo dei bar in cui viene
-- servita almeno una birra con prezzo maggiore di 2

SELECT DISTINCT B.nome, B.indirizzo 
FROM bar B JOIN serve S ON B.nome = S.bar   
WHERE S.prezzo > 2 