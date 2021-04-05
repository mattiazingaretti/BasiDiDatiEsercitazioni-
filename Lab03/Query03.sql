-- Query3 
-- Calcolare nome e indirizzo dei bevitori che
-- frequentano almeno un bar che serve la birra Peroni

SELECT DISTINCT B.nome, B.indirizzo
FROM bevitore B 
LEFT JOIN frequenta F ON F.bevitore=b.nome 
LEFT JOIN serve S ON S.bar=F.bar
WHERE S.birra = 'Peroni' 