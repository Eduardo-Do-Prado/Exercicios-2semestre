--DDL Linguagem de DEFINICAO de dados
CREATE DATABASE RoteiroLivros;

--utilizar o USE ou ctrl+u ou usar o roll
USE RoteiroLivros;

--tabela com autoincremento
CREATE TABLE Generos (

	IdGenero INT PRIMARY KEY IDENTITY not null,

	--utilizar o VARCHAR p/ complementos indeterminados do usuario
	Nome VARCHAR(200) not null
);

CREATE TABLE Autores (
	IdAutor INT PRIMARY KEY IDENTITY not null,
	NomeAutor VARCHAR (200) not null
);

CREATE TABLE Livros(
	IdLivro INT PRIMARY KEY IDENTITY not null,
	Titulo VARCHAR (255) not null,
	--puxar as chaves estrangeiras
	IdGenero INT FOREIGN KEY REFERENCES Generos (IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores (IdAutor),
);

INSERT INTO Autores (NomeAutor)
VALUES ('Mauricio de Souza'),
('J.K.Rowling'),
('Machado de Assis'),
('Ernest Clyne'),
('Ziraldo');

INSERT INTO Generos(Nome)
VALUES ('Infatil'),
('Drama'),
('Aventura'),
('Ação'),
('Infanto-Juvenil');

INSERT INTO Livros (Titulo, IdGenero, IdAutor)
VALUES ('Turma da Mônica',1,1),
('Harry Potter',2,2),
('Dom Casmurro',3,3),
('Player 1',4,4),
('O menino maluquinho',5,5);

UPDATE Generos
SET Nome = 'Infantil Novo'
WHERE IdGenero = 1;

UPDATE Generos
SET Nome = 'Drama Novo' 
WHERE IdGenero = 2;

UPDATE Generos
SET Nome = 'Aventura Novo' 
WHERE IdGenero = 3;

UPDATE Generos
SET Nome = 'Ação Novo' 
WHERE IdGenero = 4;

UPDATE Generos
SET Nome = 'Infanto-Juvenil Novo' 
WHERE IdGenero = 5;

UPDATE Livros
SET IdGenero = '5' 
WHERE IdLivro = 1

DELETE FROM Livros
WHERE IdLivro = 5;

DELETE FROM Autores
WHERE IdAutor = 5;

SELECT * FROM Autores;

SELECT * FROM Generos;

SELECT * FROM Livros;

SELECT Titulo,IdAutor FROM Livros;

SELECT Titulo,IdGenero FROM Livros;

SELECT Titulo,IdAutor,IdGenero FROM Livros;

