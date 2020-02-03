--DDL
CREATE DATABASE Locadora;
USE Locadora

CREATE TABLE Empresa (
IdEmpresa INT PRIMARY KEY IDENTITY,
NomeEmpresa VARCHAR (200)
);
GO

CREATE TABLE Marca (
IdMarca INT PRIMARY KEY IDENTITY,
NomeMarca VARCHAR (200)
);
GO

CREATE TABLE Cliente (
IdCliente INT PRIMARY KEY IDENTITY,
NomeCliente VARCHAR (200),
CPF VARCHAR (100)
);
GO

CREATE TABLE Modelo (
IdModelo INT PRIMARY KEY IDENTITY,
NomeModelo VARCHAR (200),
IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
);
GO

CREATE TABLE Veiculo (
IdVeiculo INT PRIMARY KEY IDENTITY,
Placa VARCHAR (10),
IdEmpresa INT FOREIGN KEY REFERENCES Empresa (IdEmpresa),
IdModelo INT FOREIGN KEY REFERENCES Modelo (IdModelo)
);
GO

CREATE TABLE Aluguel (
IdAluguel INT PRIMARY KEY IDENTITY,
DataInicio DATE,
DataFim DATE,
IdCliente INT FOREIGN KEY REFERENCES Cliente (IdCliente),
IdVeiculo INT FOREIGN KEY REFERENCES Veiculo (IdVeiculo),
);
GO

SELECT * FROM Empresa
SELECT * FROM Marca
SELECT * FROM Cliente
SELECT * FROM Modelo
SELECT * FROM Veiculo
SELECT * FROM Aluguel

--DML
INSERT INTO Empresa (NomeEmpresa)
VALUES ('Unidas'),
('Localiza');
GO

INSERT INTO Marca (NomeMarca)
VALUES ('Ford'),
('GM'),
('Fiat');
GO

INSERT INTO Cliente (NomeCliente, CPF)
VALUES ('Fernando', 23324442444),
('Helena', 32434554333);
GO

INSERT INTO Modelo (NomeModelo, IdMarca)
VALUES ('Fiesta',1),
('Onix',2),
('Argo',3);
GO

INSERT INTO Veiculo(Placa, IdEmpresa, IdModelo)
VALUES ('HEL1805',1,1),
('FER1010',1,2),
('POR1978',2,3),
('LEM9876',2,1);
GO

INSERT INTO Aluguel (DataInicio, DataFim, IdCliente, IdVeiculo)
VALUES ('19-12-19','20-12-19',1,1),
('20-12-19','21-12-19',1,2),
('21-12-19','21-12-19',2,3),
('22-12-19','22-12-19',2,2)
GO

--DQL
SELECT Cliente.NomeCliente, Cliente.CPF, Veiculo.Placa, Aluguel.DataInicio, Aluguel.DataFim FROM Aluguel
INNER JOIN Cliente ON Aluguel.IdCliente = Cliente.IdCliente
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
WHERE Veiculo.IdVeiculo = 2