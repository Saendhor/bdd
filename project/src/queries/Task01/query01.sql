/*
Implementare il controllo che impedisca l'assegnazione di un
laboratorio ad una guida se il numero di laboratori tenuti dalla
guida nei 7 gg precedenti supera la media del numero di laboratori
tenuti dagli altri operatori sempre nei 7 gg precedenti;
*/

USE MuseoInterattivo;

DELIMITER end_trigger
CREATE TRIGGER check_laboratori
BEFORE INSERT ON Assegnazioni_Laboratori
FOR EACH ROW
BEGIN

    DECLARE temp_date DATE;
    DECLARE temp_role VARCHAR(20);
    DECLARE num_lab_guida INT;
    DECLARE mean_lab_guida FLOAT;

    -- 1) Define the temp date
    SELECT data_prenotazione INTO temp_date
    FROM Prenotazioni p1
    WHERE p1.id_prenotazione = NEW.id_prenotazione;

    -- 2) Check the role of the given operator
    SELECT ruolo INTO temp_role
    FROM Operatori o2
    WHERE o2.id_operatore = NEW.id_operatore;

    -- 3) Calculate number of guides made from given operator
    IF temp_role = 'GUIDE' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Inserted operator is not a guide';
    END IF;

        SELECT COUNT(*) INTO num_lab_guida
        FROM Assegnazioni_Laboratori al3
            JOIN Operatori o3 ON al3.id_operatore = o3.id_operatore
            JOIN Prenotazioni p3 ON al3.id_prenotazione = p3.id_prenotazione
        WHERE al3.id_operatore = NEW.id_operatore
        AND p3.data_prenotazione BETWEEN (temp_date - INTERVAL 7 DAY) AND temp_date;

    -- 4) Calculate the mean of the labs of the other operators
    SELECT AVG(conteggio) INTO mean_lab_guida
    FROM (
            SELECT COUNT(*) AS conteggio
            FROM Assegnazioni_Laboratori al4
                JOIN Operatori o4 ON al4.id_operatore = o4.id_operatore
                JOIN Prenotazioni p4 ON al4.id_prenotazione = p4.id_prenotazione
            WHERE al4.id_operatore <> NEW.id_operatore
            AND p4.data_prenotazione BETWEEN (temp_date - INTERVAL 7 DAY) AND temp_date    
            GROUP BY al4.id_operatore        
        ) AS MeanTable;

    IF num_lab_guida > mean_lab_guida THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Overworked guide';
    END IF;
END end_trigger