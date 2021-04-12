-- Calcolare le triple <x,y,z> tali che x è una birra, y è la
--fabbrica di x e z è un bar in cui la birra x viene servita
-- e non è la più cara tra le birre servite da y

SELECT B.nome , B.fabbrica, S.bar 
FROM birra B 
JOIN serve S ON B.nome = S.birra
WHERE S.prezzo NOT IN (
						SELECT MAX(S.prezzo) 
						FROM serve S
						GROUP BY S.bar
					  ) 
