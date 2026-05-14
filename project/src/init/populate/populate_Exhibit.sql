USE MuseoInterattivo;

-- Inserimento Exhibit
-- Template ('nome', id_sala, 'stato', 'data_ultima_manutenzione_aaaa-mm-gg', frequenza_manutenzione_giorni),
INSERT INTO Exhibit (nome, id_sala, stato, data_ultima_manutenzione, frequenza_manutenzione_giorni) VALUES 
('Stand_Intro_A', 1, 'ACTIVE', '2024-04-01', 180),
('Stand_Intro_B', 1, 'MAINTENANCE', '2024-05-06', 180),
('Primavera', 2, 'ACTIVE', '2024-03-01', 60),
('Estate', 2, 'ACTIVE', '2025-06-09', 40),
('Autunno', 3, 'INACTIVE', '2025-07-13', 70),
('Inverno', 3, 'ACTIVE', '2024-12-16', 15),
('Acqua 1', 4, 'ACTIVE', '2024-11-18', 30),
('Acqua 2', 4, 'ACTIVE', '2024-09-24', 20),
('Ghiacciai 1', 5, 'MAINTENANCE', '2024-06-30', 10),
('Ghiacciai 2', 5, 'INACTIVE', '2026-10-22', 90),
('Fiumi 1', 6, 'ACTIVE', '2025-12-18', 70),
('Fiumi 2', 6, 'ACTIVE', '2025-04-14', 40),
('Mare 1', 7, 'MAINTENANCE', '2024-02-08', 20),
('Mare 2', 7, 'ACTIVE', '2025-02-03', 80),
('Eco 1', 8, 'INACTIVE', '2026-03-15', 60),
('Eco 2', 8, 'ACTIVE', '2024-07-06', 50),
('Attività 1', 9, 'ACTIVE', '2024-08-02', 45),
('Attività 2', 9, 'MAINTENANCE', '2024-08-09', 27),
('Ambiente 1', 10, 'INACTIVE', '2026-09-10', 12),
('Ambiente 2', 10, 'INACTIVE', '2025-02-11', 36);