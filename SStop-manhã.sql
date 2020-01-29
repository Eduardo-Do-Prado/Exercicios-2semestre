CREATE DATABASE Sstop_Musicas_Manha;
USE Sstop_Musicas_Manha;

CREATE TABLE EstilosMusicais (
	IdEstiloMusical INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR (200) not null,
	);

CREATE TABLE Artistas (
	IdArtista INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR (200) not null,
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstiloMusical)
	);
SELECT * FROM EstilosMusicais
SELECT * FROM Artistas;

DROP DATABASE Sstop_Musicas_Manha

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);

--DML LINGUAGEM DE MANIPULACAO

--Inserir dados
INSERT INTO EstilosMusicais (Nome, Descricao)
VALUES ('Pagode','Musicas Brasileiras'),
       ('Samba', 'Carnaval sei la');


INSERT INTO Artistas (Nome, IdEstiloMusical)
VALUES ('Zeca Pagodinho',2)

SELECT * FROM EstilosMusicais
SELECT * FROM Artistas

--Atualizar lista caso tenha erro
UPDATE EstilosMusicais
SET Nome = 'R&B'
WHERE IdEstiloMusical = 2;

UPDATE EstilosMusicais
SET Nome = 'Eletronica'
WHERE IdEstiloMusical = 3;

UPDATE EstilosMusicais
SET Nome = 'Jazz'
WHERE IdEstiloMusical = 4;

UPDATE EstilosMusicais
SET Descricao = 'tudo'
WHERE IdEstiloMusical = 2;

--DELETE apagar dados
DELETE FROM EstilosMusicais
WHERE IdEstiloMusical = 2;