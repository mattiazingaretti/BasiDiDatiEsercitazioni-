-- Per ogni garage attivo mostrare il codice del garage, la città in cui si trova il garage ed
-- il numero complessivo di custodie di automobili in quel garage

SELECT  C.codgarage,SUM(C.numero) AS totale, G.citta
FROM custodita C
JOIN garage G ON C.codgarage=G.codice
GROUP BY C.codgarage, G.citta



