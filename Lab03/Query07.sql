-- Calcolare quali bevitori gradiscono sia la birra Amstel
-- sia la birra Corona


SELECT G.bevitore FROM gradisce G WHERE G.birra='Amstel'
INTERSECT
SELECT F.bevitore FROM gradisce F WHERE F.birra='Corona'
