USE oficina;

-- QUANTIDADE DE SERVIÇOS POR STATUS
SELECT os.statusOs AS 'Serviço'
	,count(*) AS 'Quantidade'
FROM ordemservico AS os JOIN servicoos AS sos ON os.idOrdemServico = sos.idServicoOrdemServico
	JOIN servicos AS s ON sos.idServicoServico = s.idServico
GROUP BY os.statusOs;

-- Quais carros o cliente Heather já levou na oficina
SELECT c.Fname AS 'Cliente'
	,concat(v.marca," ", v.modelo) AS 'Veículo'
FROM clients AS c JOIN veiculo AS v ON c.idClient = v.idVeiculoClient
WHERE c.Fname like 'Heather';

-- QUAL O VALOR TOTAL DE PEÇAS POR ORDEM DE SERVIÇOS
SELECT os.numero AS 'Nº OS',SUM(p.valor) AS 'Total de valor em peças'
FROM ordemservico AS os JOIN pecasos AS pos ON os.idOrdemServico = pos.idPecaOrdemServico
	JOIN pecas AS p ON pos.idPecaPeca = p.idPecas
GROUP BY os.numero
ORDER BY os.numero;

-- QUAL O VALOR TOTAL DE SERVIÇOS POR ORDEM DE SERVIÇOS
SELECT os.numero AS 'Nº OS',SUM(s.valor) AS 'Total de valor em serviços'
FROM ordemservico AS os JOIN servicoos AS sos ON os.idOrdemServico = sos.idServicoOrdemServico
	JOIN servicos AS s ON sos.idServicoServico = s.idServico
GROUP BY os.numero
ORDER BY os.numero