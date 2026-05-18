/*
Visualizzare il codice, nome e cognome di tutti gli operatori
'GUIDE' che hanno preso parte ad almeno un laboratorio nel
mese di aprile del 2025
*/

USE MuseoInterattivo;
SELECT o.id_operatore, o.nome, o.cognome
FROM Assegnazioni_Laboratori al
    JOIN Operatori o ON al.id_operatore = o.id_operatore
    JOIN Prenotazioni p ON al. id_prenotazione = p.id_prenotazione
WHERE o.ruolo = 'GUIDE'
AND p.data_prenotazione BETWEEN '2025-04-01' AND '2025-04-31';