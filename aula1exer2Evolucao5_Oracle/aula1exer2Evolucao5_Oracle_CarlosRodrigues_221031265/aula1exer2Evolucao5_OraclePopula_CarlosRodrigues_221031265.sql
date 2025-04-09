-- -------- < aula1exer2Evolucao5_Oracle > --------
--
--                    SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Pedro Henrique Rodrigues de Carvalho, Carlos Eduardo Rodrigues
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 01 Visão
-- 
-- Ultimas Alteracoes
--   28/10/2024 => Modificando as tuplas e adicionando mais dados
--   04/11/2024 => Modificação das tuplas
-- 				=> Exclusão das inserções da tabela inserido
-- 				=> Adição das inserções das tabelas EMPREGADO e GERENTE
-- 				=> Inserção de 3 mais tuplas para cada tabelas
--   20/11/2024 => Mudando o script de MySQL para Oracle
--   21/11/2024 => Ajustando script para ser cooperativo com todos envolvidos no projeto
-- ---------------------------------------------------------

-- INSERCOES
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('01598765432', 'joao123', 'João Almeida');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('07412345678', 'mari758', 'Mariana Souza');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('04512378965', '9738mar', 'Pedro Martins');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('07823456789', 'MyPass96', 'Ana Oliveira');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('01234567890', 'F1n4nc3#', 'Lucas Pereira');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('09876543211', 'RafaRH99', 'Rafaela Moreira');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('06543219876', 'Venda#20', 'Carlos Nogueira');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('05321987654', 'Market#8', 'Beatriz Silva');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('08123456789', 'Engine22', 'Victor Santos');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('02765432198', 'livin456', 'Lívia Costa');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('12345678901', 'marce01', 'Marcelo Gomes');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('23456789012', 'aline23', 'Aline Torres');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('34567890123', 'carla34', 'Carla Silva');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('45678901234', 'daniel45', 'Daniel Lima');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('56789012345', 'ferna56', 'Fernando Dias');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('67890123456', 'patri67', 'Patrícia Reis');
INSERT INTO CER_PESSOA (cpf, senha, nome) VALUES ('78901234567', 'robe78', 'Roberto Santos');


INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('joao.almeida@gmail.com', 'Administração de Empresas', '01598765432');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('mariana.souza@gmail.com', 'Engenharia de Software', '07412345678');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('pedro.martins@gmail.com', 'Engenharia de Produção', '04512378965');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('marcelo.gomes@gmail.com', 'Engenharia Civil', '12345678901');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('aline.torres@gmail.com', 'Psicologia', '23456789012');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('carla.silva@gmail.com', 'Gestão de Pessoas', '34567890123');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('daniel.lima@gmail.com', 'Sistemas de Informação', '45678901234');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('fernando.dias@gmail.com', 'Administração', '56789012345');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('patricia.reis@gmail.com', 'Educação', '67890123456');
INSERT INTO CER_GERENTE (email, formacao, cpf) VALUES ('roberto.santos@gmail.com', 'Direito', '78901234567');


INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70770770', '12', 'Apto 101', 'Centro', 'Brasília', 'DF', '01598765432');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('71250705', '20', 'Casa 3', 'Taguatinga', 'Brasília', 'DF', '07412345678');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('71010001', '34', 'Apto 202', 'Asa Sul', 'Brasília', 'DF', '04512378965');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70800555', '15', 'Bloco B', 'Asa Norte', 'Brasília', 'DF', '07823456789');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70740770', '8', 'Cobertura', 'Lago Sul', 'Brasília', 'DF', '01234567890');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('71950555', '120', 'Casa', 'Ceilândia', 'Brasília', 'DF', '09876543211');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('71727001', '42', 'Galpão 1', 'Guará', 'Brasília', 'DF', '06543219876');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70670760', '55', 'Apto 303', 'Sudoeste', 'Brasília', 'DF', '05321987654');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70900500', '9', 'Casa', 'Lago Norte', 'Brasília', 'DF', '08123456789');
INSERT INTO CER_EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES ('70710770', '16', 'Cobertura', 'Centro', 'Brasília', 'DF', '02765432198');


INSERT INTO CER_AREA (nome) VALUES ('Eletrônicos');
INSERT INTO CER_AREA (nome) VALUES ('Roupas');
INSERT INTO CER_AREA (nome) VALUES ('Cosméticos');
INSERT INTO CER_AREA (nome) VALUES ('Alimentos');
INSERT INTO CER_AREA (nome) VALUES ('Móveis');
INSERT INTO CER_AREA (nome) VALUES ('Ferramentas');
INSERT INTO CER_AREA (nome) VALUES ('Brinquedos');
INSERT INTO CER_AREA (nome) VALUES ('Livros');
INSERT INTO CER_AREA (nome) VALUES ('Papelaria');
INSERT INTO CER_AREA (nome) VALUES ('Automotivo');


INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Smartphone X', 2500.00, 100);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Camiseta Básica', 50.00, 101);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Batom Matte', 30.00, 102);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Pacote de Café', 20.00, 103);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Sofá 3 Lugares', 1200.00, 104);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Furadeira 500W', 300.00, 105);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Boneco de Ação', 80.00, 106);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Livro de Romance', 35.00, 107);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Caderno Universitário', 15.00, 108);
INSERT INTO CER_PRODUTO (nome, valorUnitario, idArea) VALUES ('Kit Ferramentas Automotivas', 500.00, 109);


INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-25', 'YYYY-MM-DD'), 1000000000);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-26', 'YYYY-MM-DD'), 1000000001);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-27', 'YYYY-MM-DD'), 1000000002);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-28', 'YYYY-MM-DD'), 1000000003);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-29', 'YYYY-MM-DD'), 1000000004);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-30', 'YYYY-MM-DD'), 1000000005);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-10-31', 'YYYY-MM-DD'), 1000000006);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-11-01', 'YYYY-MM-DD'), 1000000007);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-11-02', 'YYYY-MM-DD'), 1000000008);
INSERT INTO CER_VENDA (dataVenda, matricula) VALUES (TO_DATE('2024-11-03', 'YYYY-MM-DD'), 1000000009);


INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910001', 1000000000);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910002', 1000000001);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910003', 1000000002);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910004', 1000000003);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910005', 1000000004);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910006', 1000000005);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910007', 1000000006);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910008', 1000000007);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910009', 1000000008);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910010', 1000000009);


INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10000, 100);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10001, 101);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10002, 102);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10003, 103);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10004, 104);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10005, 105);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10006, 106);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10001, 107);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10007, 108);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (10008, 109);


INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100000, 100000, 2);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100001, 100000, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100002, 100001, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100003, 100002, 3);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100004, 100003, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100005, 100004, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100006, 100005, 2);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100007, 100006, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100008, 100007, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (100009, 100008, 1);

