CREATE DATABASE Optus_Manha;
USE Optus_Manha;

CREATE TABLE Artistas (	
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200)
);

CREATE TABLE TiposUsuarios(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR (200) not null,
);

CREATE TABLE Estilos(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) not null,
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) not null,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios (IdTipoUsuario)
);

CREATE TABLE Albuns(
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200) not null,
	DataLancamento DATE not null,
	QuantidadeMinutos INT not null,
	Vizualizacao INT not null,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

DROP TABLE Albuns;
DROP TABLE Usuarios;
DROP TABLE Estilos;
DROP TABLE TiposUsuarios;
DROP TABLE Artistas;

SELECT * FROM Artistas;
SELECT * FROM TiposUsuarios;
SELECT * FROM Estilos;
SELECT * FROM Usuarios;
SELECT * FROM Albuns;

INSERT INTO Artistas (Nome)
VALUES ('Djonga'),
('Avicii'),
('Simoria e Simane'),
('Little Carlos Marrom'),
('Ivete Leitte'),
('Claudia Sangalo');

INSERT INTO TiposUsuarios (Titulo)
VALUES ('User'),
('ADM.');

INSERT INTO Estilos (Nome)
VALUES ('RAP'),
('Eletronica'),
('Sertanejo'), 
('Samba-Reggae'),
('Axe');

INSERT INTO Usuarios (Nome, IdTipoUsuario)
VALUES ('Carlos Luiz', 2),
('Eduardo Eduardo', 2),
('Laurana', 2),
('Little Romario', 1),
('Jackie Corona', 1);

INSERT INTO Albuns (Nome, DataLancamento, QuantidadeMinutos, Vizualizacao, IdEstilo, IdArtista)
VALUES ('Hat-Trick', '11-02-2018', '100', 1089324, 1, 1),
('The nights', '12-08-2014', '150', 3094035, 2, 2),
('Sofrencia', '13-07-2017', '100', 233798, 3, 3),
('AJAIO', '20-06-2000', '200', 328743, 4, 4),
('Carnaval na Bahia', '11-01-2010', '50', 238924, 5, 5),
('Carnaval em Salvador', '12-01-2010', '50', 324324, 5, 6);

UPDATE Artistas
SET Nome = 'Djonguinha'
WHERE IdArtista = 1;

UPDATE Usuarios
SET IdTipoUsuario = '1'
WHERE IdUsuario = 1;

DELETE FROM Albuns
WHERE IdAlbum = 5;

SELECT * FROM Albuns WHERE IdArtista = 1;

SELECT * FROM Albuns WHERE DataLancamento = '12-01-2010';

SELECT * FROM Albuns WHERE IdEstilo = 4;

SELECT Nome, IdArtista, DataLancamento FROM Albuns--Info que será mostrada
ORDER BY DataLancamento ASC;

-- INNER JOIN (JUNÇÃO)

SELECT * FROM Artistas
INNER JOIN Albuns ON Artistas.IdArtista = Albuns.IdArtista
WHERE Albuns.IdArtista = 3;
GO

SELECT IdArtista, IdEstilo FROM Albuns WHERE IdEstilo

--INNER JOIN COM 3 TABELAS
SELECT Albuns.Nome, Albuns.DataLancamento, Albuns.Vizualizacao, Artistas.NomeArtista, Estilos.Nome FROM Albuns
INNER JOIN Artistas ON Albuns.IdArtista = Artistas.IdArtista
INNER JOIN Estilos ON Albuns.IdEstilo = Estilos.IdEstilo
WHERE Estilos.IdEstilo = 5