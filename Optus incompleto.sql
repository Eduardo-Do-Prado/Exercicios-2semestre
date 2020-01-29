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
	QuantidadeMinutos DATETIME not null,
	Vizualizacao INT not null,
	IdArtista INT FOREIGN KEY REFERENCES Artistas (IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

SELECT * FROM Artistas;
SELECT * FROM TiposUsuarios;
SELECT * FROM Estilos;
SELECT * FROM Usuarios;
SELECT * FROM Albuns;

INSERT INTO Artistas (Nome)
VALUES ('Djonga'),
('Avicii'),
('Simone e Simaria'),
('Little Carlos Marrom'),
('Ivete Leitte'),
('Claudia Sangalo');

INSERT INTO TiposUsuarios (Titulo)
VALUES ('User'),
('ADM.')

INSERT INTO Estilos (Nome)
VALUES ('RAP'),
('Eletronica'),
('Sertanejo'), 
('Samba-Reggae'),
('Axe');

