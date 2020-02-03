
SELECT Cliente.NomeCliente, Cliente.CPF, Veiculo.Placa, Aluguel.DataInicio, Aluguel.DataFim FROM Aluguel
INNER JOIN Cliente ON Aluguel.IdCliente = Cliente.IdCliente
INNER JOIN Veiculo ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
WHERE Veiculo.IdVeiculo = 2