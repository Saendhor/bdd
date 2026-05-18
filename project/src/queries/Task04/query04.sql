/*
Visualizzare il numero complessivo di studenti che hanno
preso parte ai laboratori fra il 2024 e il 2025
*/

USE MuseoInterattivo;
SELECT SUM(p.num_studenti) AS num_studenti_totale
FROM Prenotazioni p
    JOIN Assegnazioni_Laboratori al ON p.id_prenotazione = al.id_prenotazione
WHERE data_prenotazione BETWEEN '2024-01-01' AND '2025-12-31';