-- -------- < aula1exer2_extra1 > --------
--
--                    SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Carlos Eduardo Rodrigues
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Perfis (role)
--         => 08 Usuários
-- 		   => 01 Visão
-- 
-- Ultimas Alteracoes
--   28/10/2024 => Modificando as tuplas e adicionando mais dados
-- 	 04/11/2024 => Modificação das tuplas
-- 				=> Exclusão das inserções da tabela inserido
-- 				=> Adição das inserções das tabelas EMPREGADO e GERENTE
-- 				=> Inserção de 3 mais tuplas para cada tabelas
--   18/11/2024 => Adição de tupla na tabela constitui referente a venda de idVenda = 100009 que estava ausente na referida tabela;
-- 				=> Adição de um produto que ainda não foi vendido (possui zero vendas) na tabela PRODUTO
-- ---------------------------------------------------------
-- BASE DE DADOS
USE aula1exer2evolucao3;

INSERT INTO PESSOA (cpf, senha, nome) VALUES
('01598765432', 'joao123', 'João Almeida'),
('07412345678', 'mari758', 'Mariana Souza'),
('04512378965', '9738mar', 'Pedro Martins'),
('07823456789', 'MyPass96', 'Ana Oliveira'),
('01234567890', 'F1n4nc3#', 'Lucas Pereira'),
('09876543211', 'RafaRH99', 'Rafaela Moreira'),
('06543219876', 'Venda#20', 'Carlos Nogueira'),
('05321987654', 'Market#8', 'Beatriz Silva'),
('08123456789', 'Engine22', 'Victor Santos'),
('02765432198', 'livin456', 'Lívia Costa'),
('12345678901', 'marce01', 'Marcelo Gomes'), 
('23456789012', 'aline23', 'Aline Torres'),      
('34567890123', 'carla34', 'Carla Silva'),       
('45678901234', 'daniel45', 'Daniel Lima'),      
('56789012345', 'ferna56', 'Fernando Dias'),  
('67890123456', 'patri67', 'Patrícia Reis'),  
('78901234567', 'robe78', 'Roberto Santos');   

INSERT INTO GERENTE (email, formacao, cpf) VALUES
('joao.almeida@gmail.com', 'Administração de Empresas', '01598765432'),
('mariana.souza@gmail.com', 'Engenharia de Software', '07412345678'),
('pedro.martins@gmail.com', 'Engenharia de Produção', '04512378965'),
('marcelo.gomes@gmail.com', 'Engenharia Civil', '12345678901'),  
('aline.torres@gmail.com', 'Psicologia', '23456789012'),          
('carla.silva@gmail.com', 'Gestão de Pessoas', '34567890123'),    
('daniel.lima@gmail.com', 'Sistemas de Informação', '45678901234'), 
('fernando.dias@gmail.com', 'Administração', '56789012345'),      
('patricia.reis@gmail.com', 'Educação', '67890123456'),           
('roberto.santos@gmail.com', 'Direito', '78901234567');            

-- Inserções na tabela EMPREGADO
INSERT INTO EMPREGADO (cep, numero, complemento, bairro, cidade, estado, cpf) VALUES
('70770770', '12', 'Apto 101', 'Centro', 'Brasília', 'DF', '01598765432'),
('71250705', '20', 'Casa 3', 'Taguatinga', 'Brasília', 'DF', '07412345678'),
('71010001', '34', 'Apto 202', 'Asa Sul', 'Brasília', 'DF', '04512378965'),
('70800555', '15', 'Bloco B', 'Asa Norte', 'Brasília', 'DF', '07823456789'),
('70740770', '8', 'Cobertura', 'Lago Sul', 'Brasília', 'DF', '01234567890'),
('71950555', '120', 'Casa', 'Ceilândia', 'Brasília', 'DF', '09876543211'),
('71727001', '42', 'Galpão 1', 'Guará', 'Brasília', 'DF', '06543219876'),
('70670760', '55', 'Apto 303', 'Sudoeste', 'Brasília', 'DF', '05321987654'),
('70900500', '9', 'Casa', 'Lago Norte', 'Brasília', 'DF', '08123456789'),
('70710770', '16', 'Cobertura', 'Centro', 'Brasília', 'DF', '02765432198');

-- Inserções na tabela AREA
INSERT INTO AREA (nome) VALUES
('Eletrônicos'),
('Roupas'),
('Cosméticos'),
('Alimentos'),
('Móveis'),
('Ferramentas'),
('Brinquedos'),
('Livros'),
('Papelaria'),
('Automotivo');

-- Inserções na tabela PRODUTO
INSERT INTO PRODUTO (nome, valorUnitario, idArea) VALUES
('Smartphone X', 2500.00, 100),
('Camiseta Básica', 50.00, 101),
('Batom Matte', 30.00, 102),
('Pacote de Café', 20.00, 103),
('Sofá 3 Lugares', 1200.00, 104),
('Furadeira 500W', 300.00, 105),
('Boneco de Ação', 80.00, 106),
('Livro de Romance', 35.00, 107),
('Caderno Universitário', 15.00, 108),
('Kit Ferramentas Automotivas', 500.00, 109),
('Perfume Essencial 100ml', 500.00, 109); -- Possui ZERO vendas


INSERT INTO VENDA (dataVenda, matricula) VALUES
('2024-10-25', 1000000000),
('2024-10-26', 1000000001),
('2024-10-27', 1000000002),
('2024-10-28', 1000000003),
('2024-10-29', 1000000004),
('2024-10-30', 1000000005),
('2024-10-31', 1000000006),
('2024-11-01', 1000000007),
('2024-11-02', 1000000008),
('2024-11-03', 1000000009);


INSERT INTO telefone (telefone, matricula) VALUES
('61999910001', 1000000000),
('61999910002', 1000000001),
('61999910003', 1000000002),
('61999910004', 1000000003),
('61999910005', 1000000004),
('61999910006', 1000000005),
('61999910007', 1000000006),
('61999910008', 1000000007),
('61999910009', 1000000008),
('61999910010', 1000000009);

INSERT INTO gerencia (idGerente, idArea) VALUES
(10000, 100),  
(10001, 101),  
(10002, 102),  
(10003, 103),  
(10004, 104), 
(10005, 105),  
(10006, 106),
(10001, 107), 
(10007, 108), 
(10008, 109);

INSERT INTO constitui (idProduto, idVenda, quantidade) VALUES
-- ao menos uma VENDA com 2 ou mais ITENS diferentes vendidos na mesma VENDA
(100000, 100000, 2),   
(100001, 100000, 1),  
-- 
(100002, 100001, 1),
(100003, 100002, 3),
(100004, 100003, 1),
(100005, 100004, 1),
(100006, 100005, 2),
(100007, 100006, 1),
(100008, 100007, 1),
(100009, 100008, 1),
-- Adição da tupla referente a venda 100009
(100009, 100009, 4);