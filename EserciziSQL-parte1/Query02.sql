-- Calcolare la lista senza ripetizioni di codice e cognome dei giocatori che 
-- hanno fatto piu` di 20 gol in almeno una squadra 
-- con prestigio maggiore o uguale a 4.


SELECT distinct T.codg,T.cog
FROM (
SELECT  giocato.codiceg as codg,giocatore.cognome as cog, SUM(giocato.gol) as totgoals 
from giocato 
join squadra on giocato.nomes=squadra.nome
join giocatore on giocato.codiceg = giocatore.codice
WHERE squadra.prestigio >= 4
group by giocato.codiceg, giocatore.cognome 
) T