-- 01. Quali exhibit hanno bisogno di manutenzione?
SELECT nome, data_ultima_manutenzione, 
       DATE_ADD(data_ultima_manutenzione, INTERVAL frequenza_manutenzione_giorni DAY) AS prossima_scadenza
FROM Exhibit
WHERE DATE_ADD(data_ultima_manutenzione, INTERVAL frequenza_manutenzione_giorni DAY) <= CURDATE()
   OR stato = 'INACTIVE';