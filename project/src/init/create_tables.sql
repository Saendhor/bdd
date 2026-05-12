-- Creazione del Database
CREATE DATABASE MuseoInterattivo;
USE MuseoInterattivo;

-- 1. Tabella Sale: Contenitore fisico degli exhibit e dei turni
CREATE TABLE Sale (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    tema VARCHAR(50)
);

-- 2. Tabella Operatori: Personale del museo (Guide e Tecnici)
CREATE TABLE Operatori (
    id_operatore INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    ruolo ENUM('GUIDE', 'TECHNICAL') NOT NULL
);

-- 3. Tabella Exhibit: Legata alle Sale
CREATE TABLE Exhibit (
    id_exhibit INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    stato ENUM('ACTIVE', 'INACTIVE', 'MAINTENANCE') DEFAULT 'ACTIVE',
    id_sala INT,
    data_ultima_manutenzione DATE,
    frequenza_manutenzione_giorni INT,
    FOREIGN KEY (id_sala) REFERENCES Sale(id_sala) ON DELETE SET NULL
);

-- 4. Tabella Prenotazioni: Laboratori per le scuole
CREATE TABLE Prenotazioni (
    id_prenotazione INT PRIMARY KEY AUTO_INCREMENT,
    scuola VARCHAR(150) NOT NULL,
    data_prenotazione DATE NOT NULL,
    num_studenti INT CHECK (num_studenti > 0)
);

-- 5. Tabella di Giunzione Operatori-Prenotazioni (Relazione N:M)
-- Necessaria perché ogni laboratorio può avere più operatori assegnati
CREATE TABLE Assegnazioni_Laboratori (
    id_prenotazione INT,
    id_operatore INT,
    PRIMARY KEY (id_prenotazione, id_operatore),
    FOREIGN KEY (id_prenotazione) REFERENCES Prenotazioni(id_prenotazione) ON DELETE CASCADE,
    FOREIGN KEY (id_operatore) REFERENCES Operatori(id_operatore) ON DELETE CASCADE
);

-- 6. Tabella Turni: Gestione delle guide nelle sale
CREATE TABLE Turni (
    id_turno INT PRIMARY KEY AUTO_INCREMENT,
    data_turno DATE NOT NULL,
    ora_inizio TIME NOT NULL,
    ora_fine TIME NOT NULL,
    id_operatore INT,
    id_sala INT,
    FOREIGN KEY (id_operatore) REFERENCES Operatori(id_operatore),
    FOREIGN KEY (id_sala) REFERENCES Sale(id_sala)
);
