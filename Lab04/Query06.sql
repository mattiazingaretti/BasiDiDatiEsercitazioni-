-- Per ogni città mostrare il numero di automobili diverse che sono state custodite più
-- di una volta nei garage di quella città

SELECT SUM(T.tot)
FROM (SELECT COUNT(distinct C.targaauto) AS tot
FROM custodita C,garage G
WHERE C.codgarage=G.codice AND C.numero > 1 
GROUP BY G.citta, C.targaauto) T
