CREATE DATABASE KinoFest;
USE KinoFest;

CREATE TABLE FilmInfo (
	filmID INT NOT NULL PRIMARY KEY,
	filmTitle VARCHAR(30) NOT NULL
	
);

CREATE TABLE Director (
	directorID SMALLINT NOT NULL PRIMARY KEY,
	age TINYINT NOT NULL,
	directorName VARCHAR(30) NOT NULL
);

CREATE TABLE Actor (
	actorID INT NOT NULL PRIMARY KEY,
	actorName VARCHAR(30) NOT NULL,
	actorAGE TINYINT NOT NULL
);

CREATE TABLE Genre (
	genreID  INT NOT NULL PRIMARY KEY,
	genre VARCHAR(20) NOT NULL
);

CREATE TABLE Theater (
	theaterID TINYINT NOT NULL PRIMARY KEY,
	theaterName VARCHAR(30) NOT NULL,
	address VARCHAR(50) NOT NULL,
);

CREATE TABLE Attendent (
	attendentName VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
	attendentID SMALLINT NOT NULL PRIMARY KEY,
);

CREATE TABLE Directed (
	directed INT NOT NULL PRIMARY KEY,
	directorID SMALLINT NOT NULL,
	filmID INT NOT NULL,
	FOREIGN KEY (directorID) REFERENCES Director(directorID),
	FOREIGN KEY (filmID) REFERENCES Film(filmID)
);

CREATE TABLE Stars (
	stars INT NOT NULL PRIMARY KEY,
	actorID INT NOT NULL,
	filmID INT NOT NULL,
	FOREIGN KEY (actorID) REFERENCES Actor(actorID),
	FOREIGN KEY (filmID) REFERENCES Film(filmID)
);
	
CREATE TABLE Film (
	filmID INT NOT NULL,
	genre VARCHAR(30) NOT NULL,
	length INT NOT NULL,
	release DATE NOT NULL,
	filmTitle VARCHAR(30) NOT NULL,
	directed INT NOT NULL,
	stars INT NOT NULL,
	FOREIGN KEY(directed) REFERENCES Directed(directed),
	FOREIGN KEY(stars) REFERENCES Stars(stars),
	FOREIGN KEY (genre) REFERENCES Genre(genre),
	FOREIGN KEY (filmID) REFERENCES FilmInfo(filmID)
);

CREATE TABLE Cinema (
	cinemaID TINYINT NOT NULL PRIMARY KEY,
	theaterID TINYINT NOT NULL,
	FOREIGN KEY (theaterID) REFERENCES Theater(theaterID)
);

CREATE TABLE Seat (
	seatID TINYINT NOT NULL PRIMARY KEY,
	cinemaID TINYINT NOT NULL,
	FOREIGN KEY (cinemaID) REFERENCES Cinema(cinemaID)
);

CREATE TABLE Showing (
	showingID TINYINT NOT NULL PRIMARY KEY,
	seatID TINYINT NOT NULL,
	filmID INT NOT NULL,
	FOREIGN KEY (filmID) REFERENCES Film(filmID),
	FOREIGN KEY (seatID) REFERENCES Seat(seatID)
);

CREATE TABLE Ticket (
	ticketID SMALLINT NOT NULL PRIMARY KEY,
	price SMALLINT NOT NULL,
	attendentID SMALLINT NOT NULL,
	showingID TINYINT NOT NULL,
	FOREIGN KEY (showingID) REFERENCES Showing(showingID),
	FOREIGN KEY (attendentID) REFERENCES Attendent(attendentID)
);
INSERT INTO FilmInfo (filmID, filmTitle)
VALUES (1, 'Interstellar'),
	(2, ' James Bond'),
	(3, 'Lord of the rings');

INSERT INTO Director (directorID, age, directorName)
VALUES(1, 46, 'Charles')
	(2, 37, 'Nolan');

INSERT INTO Actor (actorID, actorName, actorAGE)
VALUES(1, 'Sofie', 32)
	(2, 'Bella', 24);

INSERT INTO Genre(genreID, genre)
VALUES(1, 'Horror'),
	(2, 'Action'),
	(3, 'Romance');

INSERT INTO Theater (theaterID, theaterName, address)
VALUES(1, 'Nykøbing F. Bio', 'Havnen');

INSERT INTO Attendent (attendentName, email, attendentID)
VALUES('James', 'James1025@gmail.com', 1);

INSERT INTO Directed(directed, directorID, filmID)
VALUES(1, 1, 1),
	(2, 1, 2),
	(3, 2, 3);

INSERT INTO Stars(stars, actorID, filmID)
VALUES (1, 1, 5),
	(2, 2, 1);

INSERT INTO Film (filmID, genre, length, release, filmTitle, directorID, actorID)
VALUES(1, 'Horror', 143, '2023-03-13', 'The Freelancer', 1, 1);