-- Calcolare quali bevitori frequentano più di 5 volte
-- almeno un bar che si trova in un indirizzo diverso da
-- quello del bevitore 


SELECT T.nome FROM (
	SELECT C.nome, COUNT(B.volte_a_settimana)
	FROM bar A 
	JOIN frequenta B ON A.nome = B.bar 
	JOIN bevitore C ON B.bevitore=C.nome 
	WHERE A.indirizzo != C.indirizzo
	GROUP BY C.nome
) T WHERE T.count > 4