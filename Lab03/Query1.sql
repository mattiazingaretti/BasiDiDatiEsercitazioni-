-- QUERY 1 
-- Calcolare il nome dei bevitori che gradiscono la birra
-- 'Amstel' o la birra 'Corona'

SELECT DISTINCT A.bevitore 
FROM gradisce A 
WHERE A.birra='Corona' OR A.birra='Amstel'