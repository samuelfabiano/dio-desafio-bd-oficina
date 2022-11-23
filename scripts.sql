-- CRIAÇÃO DO BANCO DE DADOS PARA O CENÁRIOS DE OFICINA MECÂNICA
-- DROP DATABASE oficina;
CREATE DATABASE oficina;
USE oficina;

-- Criar tabela Pessoa Física
CREATE TABLE pessoa_fisica(
	idPf int auto_increment primary key,
    cpf char(11) not null,
    gender enum('Masculino','Feminino') NOT NULL,
    email varchar(45),
    CONSTRAINT unique_cpf_pessoa_fisica UNIQUE (cpf)
);
ALTER TABLE pessoa_fisica auto_increment=1;

-- Criar tabela Pessoa Jurídica
CREATE TABLE pessoa_juridica(
	idPj int auto_increment primary key,
    cnpj char(14) not null,
    socialName varchar(255) not null,
    abstName varchar(255),
    email varchar(45),
    CONSTRAINT unique_cnpj_pessoa_juridica UNIQUE (cnpj)
);
ALTER TABLE pessoa_juridica auto_increment=1;

-- CRIAR TABELA CLIENTE
CREATE TABLE clients(
	idClient int auto_increment primary key,
    Fname varchar(20),
    Minit char(3),
    Lname varchar(20),
    Address varchar(45),
    idCpf int,
    idCnpj int,
    CONSTRAINT fk_client_cpf foreign key (idCpf) references pessoa_fisica(idPf),
    CONSTRAINT fk_client_cnpj foreign key (idCnpj) references pessoa_juridica(idPj)
);
ALTER TABLE clients auto_increment=1;

-- CRIA TABELA VEICULO
CREATE TABLE veiculo(
	idVeiculo int auto_increment primary key,
    placa varchar(45) NOT NULL,
	marca varchar(45),
	modelo varchar(45),
	ano int,
	cor varchar(45),
	idVeiculoClient int,
	CONSTRAINT fk_veiculo_client foreign key (idVeiculoClient) references clients(idClient)
);
ALTER TABLE veiculo auto_increment=1;

-- CRIAR TABELA ORDEM DE SERVICO
CREATE TABLE ordemServico(
	idOrdemServico int auto_increment primary key,
    numero int NOT NULL,
	data_emissao date,
	statusOs enum('Em revisão','Aguardando aprovação','Concluído'),
	data_conclusao date,
	idVeiculoOS int,
	CONSTRAINT fk_veiculo_os foreign key (idVeiculoOS) references veiculo(idVeiculo)	
);
ALTER TABLE ordemServico auto_increment=1;

-- CRIAR TABELA SERVIÇO
CREATE TABLE servicos(
    idServico int auto_increment primary key,
    nome varchar(45),
	valor float DEFAULT 0.0
);
ALTER TABLE servicos auto_increment=1;

-- CRIAR TABELA ESPECIALIDADE
CREATE TABLE especialidade(
    idEspecialidade int auto_increment primary key,
    nome varchar(45) NOT NULL
);
ALTER TABLE especialidade auto_increment=1;

-- CRIAR TABELA MECANICO
CREATE TABLE mecanico(
	idMecanico int auto_increment primary key,
    codigo int NOT NULL,
    nome varchar(45),
    endereco varchar(45),
	idEspecialidadeMecanico int,
	CONSTRAINT fk_especialidade_mecanico foreign key (idEspecialidadeMecanico) references especialidade(idEspecialidade)
	
);
ALTER TABLE mecanico auto_increment=1;

-- CRIAR TABELA SERVIÇOS DAS ORDEM DE SERVIÇOS
CREATE TABLE servicoOS(
	idservicoOS int auto_increment primary key,
    idServicoOrdemServico int,
    idServicoServico int,
    CONSTRAINT fk_os_servico foreign key (idServicoOrdemServico) references ordemServico(idOrdemServico),
	CONSTRAINT fk_servico_servico foreign key (idServicoServico) references servicos(idServico)
);
ALTER TABLE servicoOS auto_increment=1;

-- CRIAR TABELA MECANICO VEICULO
CREATE TABLE mecanicoVeiculo(
	idmecanicoVeiculo int auto_increment primary key,
    idVeiculoMecanico int,
    idMecanicoMecanico int,
    CONSTRAINT fk_mecanico_veiculo foreign key (idVeiculoMecanico) references veiculo(idVeiculo),
    CONSTRAINT fk_mecanico_mecanico foreign key (idMecanicoMecanico) references mecanico(idMecanico)
);
ALTER TABLE mecanicoVeiculo auto_increment=1;

-- CRIAR TABELA PEÇA
CREATE TABLE pecas(
	idPecas int auto_increment primary key,
	nome varchar(45),
	valor FLOAT	
);
ALTER TABLE pecas auto_increment=1;

-- CRIAR TABELA PEÇAS DA ORDEM DE SERVIÇO
CREATE TABLE pecasOS(
	idPecasOs int auto_increment primary key,
	idPecaOrdemServico int,
	idPecaPeca int,
	CONSTRAINT fk_peca_os foreign key (idPecaOrdemServico) references ordemServico(idOrdemServico),
    CONSTRAINT fk_peca_peca foreign key (idPecaPeca) references pecas(idPecas)
);
ALTER TABLE pecasOS auto_increment=1;
