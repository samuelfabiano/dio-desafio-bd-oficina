# Projeto lógico de banco de dados - Oficina Mecânica

Implementação do projeto lógico de banco de dados para um cenário oficina mecânica.

Primeiramente, a modalagem de referência é representada conforme FIGURA 1. Os scripts estão disponíveis no diretório /scripts.

Em seguida os seguintes passos foram executados:

1. Criação dos Scripts SQL para criação do esquema do banco de dados. O arquivo scripts.sql está disponível no diretório /scripts
2. Inserção dos dados. O arquivo insert.sql está disponível no diretório /scripts
3. Criação de consultas SQL, apresentadas a seguir e disponível no diretório /scripts, chamada de querys.sql

Diante disso, abaixo demonstração dos resultados obtidos:

## Quantidade de serviços por status
```bash
SELECT os.statusOs AS 'Serviço'
	,count(*) AS 'Quantidade'
FROM ordemservico AS os JOIN servicoos AS sos ON os.idOrdemServico = sos.idServicoOrdemServico
	JOIN servicos AS s ON sos.idServicoServico = s.idServico
GROUP BY os.statusOs;
```
### Resulatdo
![image](https://user-images.githubusercontent.com/89883269/203456278-d72aaa63-f69e-40cd-9f44-07c9f5b06037.png)

## Quais carros o cliente Heather já levou na oficina
```bash
SELECT c.Fname AS 'Cliente'
	,concat(v.marca," ", v.modelo) AS 'Veículo'
FROM clients AS c JOIN veiculo AS v ON c.idClient = v.idVeiculoClient
WHERE c.Fname like 'Heather';
```
### Resultado
![image](https://user-images.githubusercontent.com/89883269/203456516-4b3b84a0-1a12-4c34-a085-9b31e0b890be.png)

## Qual o valor total de peças por OS
```bash
SELECT os.numero AS 'Nº OS',SUM(p.valor) AS 'Total de valor em peças'
FROM ordemservico AS os JOIN pecasos AS pos ON os.idOrdemServico = pos.idPecaOrdemServico
	JOIN pecas AS p ON pos.idPecaPeca = p.idPecas
GROUP BY os.numero
ORDER BY os.numero;
```
### Resultado
![image](https://user-images.githubusercontent.com/89883269/203456621-9f37ae58-d534-45f5-89c1-97660f0267a8.png)

## Qual o valor total de serviço por OS
```bash
SELECT os.numero AS 'Nº OS',SUM(s.valor) AS 'Total de valor em serviços'
FROM ordemservico AS os JOIN servicoos AS sos ON os.idOrdemServico = sos.idServicoOrdemServico
	JOIN servicos AS s ON sos.idServicoServico = s.idServico
GROUP BY os.numero
ORDER BY os.numero
```
### Resultado 
![image](https://user-images.githubusercontent.com/89883269/203456703-5adb216c-4567-4a3d-a544-5c263a7c3bcc.png)
