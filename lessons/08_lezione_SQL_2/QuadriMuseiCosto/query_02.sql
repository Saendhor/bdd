/*
	bdd/Lezioni/lezione8_SQL_II.pdf Slide 6
	Il numero di quadri per ogni pittore fra tutti i musei parigini
*/

use myDatabase;

SELECT count(*) num_musei_parigini
FROM Quadri NATURAL JOIN Musei
WHERE Citta = 'Parigi';
