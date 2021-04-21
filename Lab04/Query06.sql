-- Calcolare il nome dei bevitori che frequentano
-- almeno due bar diversi, evitando ripetizioni nel
-- risultato

SELECT DISTINCT F.bevitore 
FROM frequenta F
WHERE (
		SELECT COUNT(DISTINCT  frequenta.bar) AS num 
		FROM frequenta 
		WHERE frequenta.bevitore = F.bevitore 
		GROUP BY frequenta.bevitore 
	  ) > 1 
	