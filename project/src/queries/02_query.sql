-- 02. Elenco dei laboratori con i relativi operatori
SELECT p.scuola, p.data_laboratorio, o.nome, o.cognome
FROM Prenotazioni p JOIN Assegnazioni_Laboratori al ON p.id_prenotazione = al.id_prenotazione
                    JOIN Operatori o ON al.id_operatore = o.id_operatore
ORDER BY p.data_laboratorio;