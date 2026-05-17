/*
Trovare l'Exhibit la cui data di ultima manutenzione
è la più lontana
*/

USE MuseoInterattivo;
SELECT e.id_exhibit, e.nome
FROM Exhibit e
WHERE e.data_ultima_manutenzione > ALL (
    SELECT te.data_ultima_manutenzione
    FROM Exhibit te
);