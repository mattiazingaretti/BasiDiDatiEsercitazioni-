-- Calcolare, evitando le ripetizioni, 
-- il codice dei giocatori che hanno giocato in almeno una squadra con prestigio minore di 3.


select distinct giocato.codiceg
from giocato, squadra 
where giocato.nomes = squadra.nome AND squadra.prestigio < 3