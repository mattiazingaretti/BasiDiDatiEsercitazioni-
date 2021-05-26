
-- Calcolare, evitando le coppie <x, x> e <y, x> se gia presente <x, y>, le coppie dei
-- giocatori che hanno giocato in esattamente le stesse squadre, mostrando i lori
-- codici.


Select distinct g1.codiceg,g2.codiceg 
from giocato g1 join giocato g2 on g1.codiceg != g2.codiceg 
	where g1.codiceg <> g2.codiceg AND NOT EXISTS(select distinct giocato.nomes
			  from giocato 
		   	  where giocato.codiceg = g1.codiceg
except
			select distinct giocato.nomes
			from giocato 
			where giocato.codiceg = g2.codiceg
union
												  select distinct giocato.nomes
			  from giocato 
		   	  where giocato.codiceg = g1.codiceg
except
			select distinct giocato.nomes
			from giocato 
			where giocato.codiceg = g2.codiceg
												 ) 

