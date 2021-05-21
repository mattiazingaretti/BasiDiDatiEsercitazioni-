--Per ogni squadra con prestigio maggiore o uguale a 4,
-- calcolare la media dei gol fatti dai suoi giocatori, 
--  mostrando il nome della squadra e tale media.

select squadra.nome, AVG(giocato.gol)::numeric(10,2)
from squadra 
join giocato on giocato.nomes=squadra.nome
group by squadra.nome
having squadra.prestigio >= 4