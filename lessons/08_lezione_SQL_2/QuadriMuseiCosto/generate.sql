/*
	bdd/Lezioni/lezione8_SQL_II.pdf Slide 6
*/

/* Select the database to use*/
USE myDatabase;

/* Definition and population of table Quadri*/
DROP TABLE IF EXISTS Quadri;

CREATE TABLE Quadri (Pittore varchar(255), Titolo varchar(255), DataCreazione int, NomeMuseo varchar(255));

INSERT INTO Quadri (Pittore, Titolo, DataCreazione, NomeMuseo) VALUES
('Alberto', 'Callisto', 2026, 'Taboo'),
('Giacomini', 'Paperoga', 2008, 'Taboo'),
('Bertolini', 'LikeyLikey', 2017, 'Harginvald'),
('Cartomante', 'Giocatori', 2019, 'Mirlon');

/* Definition and population of table Quadri*/
DROP TABLE IF EXISTS Musei;

CREATE TABLE Musei(NomeMuseo varchar(255), Citta varchar(255), Curatore varchar(255));

INSERT INTO Musei (NomeMuseo, Citta, Curatore) VALUES
('Taboo', 'Empoli', 'Giorgio'),
('Harginvald', 'Boston', 'Myles'),
('Mirlon', 'Parigi', 'Gaston');

/* Definition and population of table Quadri*/
DROP TABLE IF EXISTS Costo;

CREATE TABLE Costo(Titolo varchar(255), Prezzo int);

INSERT INTO Costo(Titolo, Prezzo) VALUES
('Callisto', 800),
('LikeyLikey', 40),
('Giocatori', 770),
('Paperoga', 450);
