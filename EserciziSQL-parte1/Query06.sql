-- Mostrare, per ogni giocatore con eta` maggiore o uguale a 28 anni,
-- il codice e la media dei gol fatti nelle squadre,
-- ma restringendo l’attenzione solo sui giocatori la cui media e` superiore a 15.



select giocatore.codice ,AVG(giocato.gol)::numeric(10,2) as media
from giocatore join 
giocato on giocatore.codice = giocato.codiceg
group by giocatore.codice
having giocatore.eta >= 28 AND AVG(giocato.gol)::numeric(10,2)>15