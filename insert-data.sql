USE oficina;

-- INSERIR DADOS DE PESSOA FÍSICA
INSERT INTO pessoa_fisica(cpf,gender,email)
VALUES
	(12345678901,'Masculino','jessamine@mydomian.com'),
    (09876543212,'Feminino','sou.katelyn@mydomian.com'),
    (34567890123,'Feminino','karyn@mydomian.com'),
    (67890123456,'Masculino','heather@mydomian.com'),
    (45678901234,'Feminino','katelyn@mydomian.com'),
    (89012345678,'Masculino','ria@mydomian.com'),
    (12312312345,'Masculino','andrew@mydomian.com'),
    (56756756789,'Masculino','rhonda@mydomian.com'),
    (34534567891,'Feminino','adriae@mydomian.com'),
    (56789045678,'Feminino','larissa@mydomian.com');

-- INSERIR DADOS DE PESSOA JURÍDICA
INSERT INTO pessoa_juridica(cnpj,socialName,abstName,email)
VALUES
	(78876301441124,"Nash Estes","semper","non.sapien@aol.edu"),
  (68241106481586,"Avye Freeman","aliquet.","eu@hotmail.couk"),
  (45979457588313,"Marvin Sparks","lacinia","metus@icloud.couk"),
  (62310741493744,"Galvin Day","neque.","mollis@icloud.ca"),
  (35920818001938,"Odessa Pugh","risus.","nunc.mauris.sapien@protonmail.couk"),
  (27321423203449,"Madeson Mckinney","eu","mauris@google.edu"),
  (94418372304512,"Connor Gray","sed","ipsum.primis.in@google.org"),
  (35379033811144,"Heather Ford","ac","neque@aol.ca"),
  (32750750430514,"Naomi Slater","orci.","integer.mollis@yahoo.ca"),
  (19263642893883,"Liberty Hardy","ullamcorper,","lacus.aliquam@google.edu");

-- INSERIR DADOS DOS CLIENTES
INSERT INTO clients (Fname,Minit,Lname,idCpf,idCnpj,Address)
VALUES
  ("Karyn","Rat","Ayers",1,null,"773-2215 Tellus Av."),
  ("Cheryl","Jon","Rodriquez",2,null,"311-5454 Sed Ave"),
  ("Jessamine","Ham","Wilder",3,null,"1494 Metus Avenue"),
  ("Larissa","Sua","Velez",4,null,"Ap #487-7600 Convallis Street"),
  ("Adria","Lai","Mcmillan",null,5,"5243 Facilisi. St."),
  ("Heather","Est","Salas",null,3,"Ap #820-4964 Pretium St."),
  ("Ria","Mar","Hodge",6,null,"Ap #686-574 Suspendisse Street"),
  ("Andrew","Ral","Weaver",7,null,"213-9631 Lorem Street"),
  ("Katelyn","Sou","Middleton",8,null,"766-1780 Massa Av."),
  ("Rhonda","Ter","Oneal",null,9,"Ap #464-3026 Feugiat Street");
  
-- INSERIR DADOS DOS VEICULOS
INSERT INTO veiculo(placa,marca,modelo,ano,cor,idVeiculoClient)
VALUES
	("G1M 5D4","GM","Cruze","2017","Branco",8),
  ("T8D 7U3","Ford","Ranger","2017","Prata",2),
  ("Q6O 3W1","Fiat","Palio","2016","Preto",6),
  ("R1I 8B4","BMW","X1","2015","Azul",9),
  ("P3G 6V1","Ford","Focus","2021","Preto",9),
  ("G1D 8V6","GM","S10","2018","Branco",1),
  ("X5X 2M7","VW","Gol","2017","Vermelho",9),
  ("N8K 6M4","GM","Ranger","2015","Vermelho",4),
  ("G1H 3U7","Fiat","Strada","2020","Preto",6),
  ("Y2G 4V6","Toyota","Corolla","2017","Prata",6);
	
-- INSERIR DADOS DAS ORDENS DE SERVIÇOS
INSERT INTO ordemServico(numero,data_emissao,statusOs,data_conclusao,idVeiculoOS)
VALUES 
	(42102,"2021-02-27","Concluído","2021-03-10",2),
  (21334,"2020-11-23","Concluído","2020-11-30",1),
  (17410,"2021-04-24","Em revisão",NULL,6),
  (52486,"2021-06-09","Em revisão",NULL,9),
  (21554,"2021-12-30","Em revisão",NULL,9),
  (57272,"2021-01-01","Concluído","2021-03-01",4),
  (20682,"2022-10-06","Aguardando aprovação",NULL,7),
  (90694,"2022-05-07","Aguardando aprovação",NULL,10),
  (61117,"2020-11-20","Concluído","2020-11-29",2),
  (61863,"2021-07-29","Em revisão",NULL,4);

-- INSERIR DADOS DAS SERVIÇOS
INSERT INTO servicos(nome,valor)
VALUES 
	("Laternagem",500.00),
    ("Mecânica",300.50),
    ("Eltétrica",70.0),
    ("Lavagem",DEFAULT),
    ("Pintura",120.50);

-- INSERIR DADOS DAS ESPECIALIDADES
INSERT INTO especialidade(nome)
VALUES 
	("Mecânica geral"),
    ("Eletricista"),
    ("Pintor"),
    ("Lanterneiro");

-- INSERIR DADOS DOS MECÂNICOS
INSERT INTO mecanico(codigo,nome,endereco,idEspecialidadeMecanico)
VALUES
	(56,"Driscoll Hutchinson","Ap #825-569 Vulputate, St.",4),
  (98,"Porter Santiago","640-1300 Maecenas Rd.",3),
  (56,"Mason Baxter","Ap #280-6933 Ante St.",2),
  (89,"Gavin Herman","9522 Lorem Rd.",2),
  (54,"Wallace Cooper","860-8024 Dolor. Rd.",3),
  (45,"Gannon Joseph","Ap #487-4372 Dolor Road",3),
  (12,"Clio Bond","Ap #129-4578 Tellus Rd.",4),
  (23,"Mollie Hancock","P.O. Box 919, 2010 Felis St.",2),
  (59,"Rylee Newton","8888 In, Road",1),
  (44,"Amethyst Cooper","499-7836 Quisque Rd.",2);

-- INSERIR DADOS OS SERVIÇOS DAS OS
INSERT INTO servicoOS(idServicoOrdemServico,idServicoServico)
VALUES
	(6,2),
  (3,2),
  (6,3),
  (7,2),
  (2,4),
  (6,2),
  (10,2),
  (5,3),
  (6,4),
  (3,2),
  (3,3),
  (9,3),
  (4,5),
  (3,1),
  (9,1),
  (4,3),
  (9,4),
  (7,4),
  (10,4),
  (8,4);

-- INSERIR DADOS MECÂNICOS VEÍCULOS
INSERT INTO mecanicoVeiculo(idVeiculoMecanico,idMecanicoMecanico)
VALUES
	(8,10),
  (4,4),
  (7,3),
  (1,6),
  (1,7),
  (7,4),
  (1,10),
  (2,9),
  (2,2),
  (4,6),
  (4,6),
  (7,9),
  (2,4),
  (9,2),
  (6,10),
  (9,9),
  (2,8),
  (8,10),
  (7,5),
  (5,3);

-- INSERIR DADOS PEÇAS
INSERT INTO pecas(nome,valor)
VALUES
	("Farol",320.80),
    ("Vela",32.0),
    ("Para-choque",800.0),
    ("Correia",430.0),
    ("Volante",560.0);

-- INSERIR DADOS PEÇAS DAS ORDENS DE SERIÇOS
INSERT INTO pecasOS(idPecaOrdemServico,idPecaPeca)
VALUES
	(8,3),
  (4,1),
  (7,3),
  (1,3),
  (1,1),
  (7,5),
  (1,1),
  (2,2),
  (2,1),
  (4,2),
  (4,3),
  (7,5),
  (2,4),
  (9,3),
  (6,5),
  (9,4),
  (2,5),
  (8,3),
  (7,4),
  (5,3);


