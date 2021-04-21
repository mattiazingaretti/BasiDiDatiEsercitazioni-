-- Chiamiamo attivi i garage che hanno custodito almeno un’automobile. Per ogni
-- garage attivo mostrare il codice del garage ed il numero complessivo di custodie di
-- automobili in quel garage.

SELECT C.codgarage, SUM(C.numero) AS totale 
FROM custodita C 
GROUP BY C.codgarage, C.targaauto

