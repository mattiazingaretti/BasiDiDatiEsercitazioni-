-- Calcolare,per ogni squadra con prestigio minore di 3,il numero di giocatori 
-- che hanno fatto piu` di 10 gol per quella squadra, 
-- mostrando il nome della squadra e il numero di tali giocatori.

select squadra.nome, COUNT(distinct giocatore.codice)
from squadra 
join giocato on giocato.nomes = squadra.nome
join giocatore on giocatore.codice=giocato.codiceg
where giocato.gol > 10 
group by squadra.nome
having squadra.prestigio < 3 


