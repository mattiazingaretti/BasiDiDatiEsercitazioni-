-- Chiamiamo «standardizzata» una birra che è venduta
-- allo stesso prezzo in tutti i bar. Calcolare le fabbriche
-- di birra che fabbricano almeno una birra non
-- standardizzata


SELECT DISTINCT B.fabbrica
FROM birra B,serve S,(		
	SELECT AVG(serve.prezzo)::NUMERIC(10,2) as mean
	FROM serve
	GROUP BY serve.birra
) T
WHERE B.nome=S.birra AND T.mean != S.prezzo