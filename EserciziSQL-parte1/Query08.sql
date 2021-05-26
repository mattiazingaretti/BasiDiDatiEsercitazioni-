-- Calcolare, per ogni squadra, qual e il giocatore (o i giocatori, se sono pi ` u d’uno) `
-- che hanno giocato in quella squadra e hanno fatto il maggior numero di gol per
-- quella squadra, mostrando il nome della squadra e il codice del giocatore.
-- Query corretta

with T as( SELECT  squadra.nome, max(giocato.gol)
FROM squadra
join giocato on squadra.nome = giocato.nomes
Join giocatore on giocatore.codice = giocato.codiceg
group by squadra.nome  ) 
SELECT T.nome, giocatore.codice FROM  
T join giocato on T.nome = giocato.nomes
join giocatore on giocatore.codice=giocato.codiceg
WHERE T.max = giocato.gol

SELECT  giocatore.codice , squadra.nome, giocato.gol
FROM squadra
join giocato on squadra.nome = giocato.nomes
Join giocatore on giocatore.codice = giocato.codiceg

