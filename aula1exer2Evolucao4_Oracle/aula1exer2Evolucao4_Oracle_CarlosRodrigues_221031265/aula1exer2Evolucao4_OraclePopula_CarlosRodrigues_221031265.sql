-- -------- < aula1exer2Evolucao4_Oracle > --------
--
--                    SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Carlos Eduardo Rodrigues
-- Banco de Dados .........: Oracle APEX 24.1.5
-- Base de Dados (nome) ...: WKSP_VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 05 Sequences
-- 
-- Ultimas Alteracoes
--   28/10/2024 => Modificando as tuplas e adicionando mais dados
-- 	 04/11/2024 => Modificação das tuplas
-- 				=> Exclusão das inserções da tabela inserido
-- 				=> Adição das inserções das tabelas EMPREGADO e GERENTE
-- 				=> Inserção de 3 mais tuplas para cada tabelas
-- 	16/11/2024 => Adição de mais uma tupla na tabela constitui. Agora um dos produtos foi vendido em mais de uma venda.
--  21/11/2024 => Correção de inserts para que sejam compatíveis com o banco de dados no Oracle APEX.
-- ---------------------------------------------------------

INSERT ALL
INTO CER_PESSOA (cpf, senha, nome) VALUES('01598765432', 'joao123', 'João Almeida')
INTO CER_PESSOA (cpf, senha, nome) VALUES('07412345678', 'mari758', 'Mariana Souza')
INTO CER_PESSOA (cpf, senha, nome) VALUES('04512378965', '9738mar', 'Pedro Martins')
INTO CER_PESSOA (cpf, senha, nome) VALUES('07823456789', 'MyPass96', 'Ana Oliveira')
INTO CER_PESSOA (cpf, senha, nome) VALUES('01234567890', 'F1n4nc3#', 'Lucas Pereira')
INTO CER_PESSOA (cpf, senha, nome) VALUES('09876543211', 'RafaRH99', 'Rafaela Moreira')
INTO CER_PESSOA (cpf, senha, nome) VALUES('06543219876', 'Venda#20', 'Carlos Nogueira')
INTO CER_PESSOA (cpf, senha, nome) VALUES('05321987654', 'Market#8', 'Beatriz Silva')
INTO CER_PESSOA (cpf, senha, nome) VALUES('08123456789', 'Engine22', 'Victor Santos')
INTO CER_PESSOA (cpf, senha, nome) VALUES('02765432198', 'livin456', 'Lívia Costa')
INTO CER_PESSOA (cpf, senha, nome) VALUES('12345678901', 'marce01', 'Marcelo Gomes')
INTO CER_PESSOA (cpf, senha, nome) VALUES('23456789012', 'aline23', 'Aline Torres')
INTO CER_PESSOA (cpf, senha, nome) VALUES('34567890123', 'carla34', 'Carla Silva')
INTO CER_PESSOA (cpf, senha, nome) VALUES('45678901234', 'daniel45', 'Daniel Lima')
INTO CER_PESSOA (cpf, senha, nome) VALUES('56789012345', 'ferna56', 'Fernando Dias')
INTO CER_PESSOA (cpf, senha, nome) VALUES('67890123456', 'patri67', 'Patrícia Reis')
INTO CER_PESSOA (cpf, senha, nome) VALUES('78901234567', 'robe78', 'Roberto Santos')
SELECT * FROM DUAL; 


INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'joao.almeida@gmail.com', 'Administração de Empresas', '01598765432');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'mariana.souza@gmail.com', 'Engenharia de Software', '07412345678');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'pedro.martins@gmail.com', 'Engenharia de Produção', '04512378965');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'marcelo.gomes@gmail.com', 'Engenharia Civil', '12345678901');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'aline.torres@gmail.com', 'Psicologia', '23456789012');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'carla.silva@gmail.com', 'Gestão de Pessoas', '34567890123');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'daniel.lima@gmail.com', 'Sistemas de Informação', '45678901234');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'fernando.dias@gmail.com', 'Administração', '56789012345');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'patricia.reis@gmail.com', 'Educação', '67890123456');
INSERT INTO CER_GERENTE (idGerente, email, formacao, cpf) VALUES (CER_SEQ_GERENTE.NEXTVAL, 'roberto.santos@gmail.com', 'Direito', '78901234567');

INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70770770', '12', 'Apto 101', 'Centro', 'Brasília', 'DF', '01598765432');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '71250705', '20', 'Casa 3', 'Taguatinga', 'Brasília', 'DF', '07412345678');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '71010001', '34', 'Apto 202', 'Asa Sul', 'Brasília', 'DF', '04512378965');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70800555', '15', 'Bloco B', 'Asa Norte', 'Brasília', 'DF', '07823456789');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70740770', '8', 'Cobertura', 'Lago Sul', 'Brasília', 'DF', '01234567890');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '71950555', '120', 'Casa', 'Ceilândia', 'Brasília', 'DF', '09876543211');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '71727001', '42', 'Galpão 1', 'Guará', 'Brasília', 'DF', '06543219876');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70670760', '55', 'Apto 303', 'Sudoeste', 'Brasília', 'DF', '05321987654');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70900500', '9', 'Casa', 'Lago Norte', 'Brasília', 'DF', '08123456789');
INSERT INTO CER_EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, cpf) VALUES (CER_SEQ_EMPREGADO.NEXTVAL, '70710770', '16', 'Cobertura', 'Centro', 'Brasília', 'DF', '02765432198');

INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Eletrônicos');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Roupas');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Cosméticos');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Alimentos');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Móveis');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Ferramentas');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Brinquedos');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Livros');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Papelaria');
INSERT INTO CER_AREA (idArea, nome) VALUES (CER_SEQ_AREA.NEXTVAL, 'Automotivo');

INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Smartphone X', 2500.00, 1);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Camiseta Básica', 50.00, 2);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Batom Matte', 30.00, 3);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Pacote de Café', 20.00, 4);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Sofá 3 Lugares', 1200.00, 5);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Furadeira 500W', 300.00, 6);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Boneco de Ação', 80.00, 7);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Livro de Romance', 35.00, 8);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Caderno Universitário', 15.00, 9);
INSERT INTO CER_PRODUTO (idProduto, nome, valorUnitario, idArea) VALUES (CER_SEQ_PRODUTO.NEXTVAL, 'Kit Ferramentas Automotivas', 500.00, 10);

INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-25', 'YYYY-MM-DD'), 1);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-26', 'YYYY-MM-DD'), 2);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-27', 'YYYY-MM-DD'), 3);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-28', 'YYYY-MM-DD'), 4);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-29', 'YYYY-MM-DD'), 5);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-30', 'YYYY-MM-DD'), 6);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-10-31', 'YYYY-MM-DD'), 7);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 8);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-11-02', 'YYYY-MM-DD'), 9);
INSERT INTO CER_VENDA (idVenda, dataVenda, matricula) VALUES (CER_SEQ_VENDA.NEXTVAL, TO_DATE('2024-11-03', 'YYYY-MM-DD'), 10);

INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910001', 1);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910002', 2);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910003', 3);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910004', 4);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910005', 5);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910006', 6);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910007', 7);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910008', 8);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910009', 9);
INSERT INTO CER_TELEFONE (telefone, matricula) VALUES ('61999910010', 10);

INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (1, 1);  
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (2, 2);  
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (3, 3);  
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (4, 4);  
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (5, 5); 
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (6, 6);  
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (7, 7);
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (2, 8); 
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (8, 9); 
INSERT INTO CER_GERENCIA (idGerente, idArea) VALUES (9, 10);

INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (1, 1, 2);  
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (2, 1, 1);  
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (3, 2, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (4, 3, 3);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (5, 4, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (6, 5, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (7, 6, 2);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (8, 7, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (9, 8, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (10, 9, 1);
INSERT INTO CER_CONSTITUI (idProduto, idVenda, quantidade) VALUES (10, 10, 1);

