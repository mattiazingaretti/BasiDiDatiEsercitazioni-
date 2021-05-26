-- Calcolare il codice, il cognome e il numero dei gol (rispettando quest’ordine)
-- dei giocatori che hanno giocato nel Milan e in nessuna altra squadra. 
-- Query corretta



SELECT giocatore.codice, giocatore.cognome, SUM(giocato.gol)
from giocato 
join giocatore on giocato.codiceg = giocatore.codice
WHERE giocatore.codice NOT IN (SELECT distinct giocatore.codice 
							from giocato 
							join giocatore on giocato.codiceg = giocatore.codice
							where giocato.nomes != 'Milan')
group by giocatore.codice, giocatore.cognome