
	DROP DATABASE IF EXISTS Othello;
	CREATE DATABASE Othello;
	USE DATABASE Othello;
	CREATE TABLE Jugador (
		Username TEXT PRIMARY KEY NOT NULL,
		Password VARCHAR(10),
		Nivel INTEGER NOT NULL
	)ENGINE = InnoDB;

	CREATE TABLE Partida(
		id VARCHAR(5),
		FechaInicio DATETIME,
		FechaFinal DATETIME,
		Duración TIME,
		Ganador TEXT NOT NULL,
		LimitePartida TIME 
 	)ENGINE = InnoDB;

	CREATE TABLE Juego(
		idPartida VARCHAR(5),
		Username1 TEXT PRIMARY KEY NOT NULL,
		Username2 TEXT PRIMARY KEY NOT NULL
		FOREIGN KEY idPartida REFERENCES(Partida(id)),
		FOREIGN KEY Username1 REFERENCES(Jugador(Username)),
		FOREIGN KEY Username2 REFERENCES(Jugador(Username))
	)ENGINE = InnoDB;

	
	INSERT INTO Jugador VALUES('Marina21', 'Ma12345Pad', 4);
	INSERT INTO Jugador VALUES('Juan10', 'Asdfghjk12', 10);
	INSERT INTO Jugador VALUES('Carla55', 'QWertyu857', 5);
	INSERT INTO Jugador VALUES('Anna33', 'QDesfrtn27', 15);

	INSERT INTO Partida VALUES('abc12',DATEADD(hour, -4, GETDATE()),GETDATE(),GETDATE() - DATEADD(hour, -4, GETDATE()),'Marina21','10:00:00');
	INSERT INTO Partida VALUES('def34',DATEADD(hour, -2, GETDATE()),GETDATE(),GETDATE() - DATEADD(hour, -2, GETDATE()),'Carla55','10:00:00');
	INSERT INTO Partida VALUES('ghi56',DATEADD(hour, -3, GETDATE()),GETDATE(),GETDATE() - DATEADD(hour, -3, GETDATE()),'Juan10','10:00:00');
	INSERT INTO Partida VALUES('jkl78',DATEADD(hour, -6, GETDATE()),GETDATE(),GETDATE() - DATEADD(hour, -6, GETDATE()),'Marina21','10:00:00');

	INSERT INTO Juego VALUES('abc12','Marina21','Juan10');
	INSERT INTO Juego VALUES('def34','Carla55','Juan10');
	INSERT INTO Juego VALUES('ghi56','Anna33','Juan10');
	INSERT INTO Juego VALUES('jkl78','Marina21','Carla55');

