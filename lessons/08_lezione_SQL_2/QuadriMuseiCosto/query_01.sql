/*
	bdd/Lezioni/lezione8_SQL_II.pdf Slide 6
	Elenco dei musei e del valore medio dei quadri posseduti 
*/

use myDatabase;

SELECT NomeMuseo, AVG(Prezzo) 'Prezzo Medio'
FROM Quadri NATURAL JOIN Costo
GROUP BY NomeMuseo;
