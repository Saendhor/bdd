-- Inserimento Sale
INSERT INTO Sale (nome, piano, tema) VALUES 
('Sala Galileo', 0, 'Fisica Classica'),
('Spazio Profondo', 1, 'Astronomia'),
('Bio-Lab', 1, 'Biologia Interattiva');

-- Inserimento Operatori
INSERT INTO Operatori (nome, cognome, ruolo) VALUES 
('Marco', 'Rossi', 'GUIDE'),
('Elena', 'Bianchi', 'GUIDE'),
('Luca', 'Verdi', 'TECHNICAL');

-- Inserimento Exhibit
INSERT INTO Exhibit (nome, id_sala, stato, data_ultima_manutenzione, frequenza_manutenzione_giorni) VALUES 
('Pendolo di Foucault', 1, 'ACTIVE', '2024-04-01', 180),
('Simulatore Marziano', 2, 'MAINTENANCE', '2024-05-06', 90);