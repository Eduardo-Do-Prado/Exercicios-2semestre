
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