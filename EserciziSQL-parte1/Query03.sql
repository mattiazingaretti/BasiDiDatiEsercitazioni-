-- Calcolare il codice e il cognome dei giocatori 
-- che non hanno fatto alcun gol.

SELECT giocatore.codice, giocatore.cognome 
FROM  giocatore,
(SELECT giocato.codiceg as cod, SUM(giocato.gol) as totgol
from giocato
 group by giocato.codiceg
) T
WHERE T.cod = giocatore.codice AND T.totgol = 0