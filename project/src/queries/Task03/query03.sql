/*
Dire a quanti laboratori si è dedicata ogni guida;
*/

USE MuseoInterattivo;
SELECT o.id_operatore, o.nome, o.cognome, COUNT(al.id_prenotazione) AS num_laboratori
FROM Assegnazioni_Laboratori al
    JOIN Operatori o ON al.id_operatore = o.id_operatore
WHERE o.ruolo = 'GUIDE'
GROUP BY al.id_operatore;