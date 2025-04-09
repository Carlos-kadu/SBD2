-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE POPULAR (DML)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 08 tabelas
-- 
-- Ultimas Alteracoes
--   28/10/2024 => Modificando as tuplas e adicionando mais dados
-- ---------------------------------------------------------

INSERT INTO PESSOA (cpf, senha, nome, matricula, cep, numero, complemento, bairro, cidade, estado, email, formacao, PESSOA_TIPO) VALUES
('11111111111', 'senha123', 'João Silva', 'M001', '70000000', '10', 'Apto 101', 'Centro', 'Brasília', 'DF', 'joao.silva@example.com', 'Administração', 1),
('22222222222', 'senha123', 'Maria Santos', 'M002', '70000001', '20', 'Casa', 'Centro', 'Brasília', 'DF', 'maria.santos@example.com', 'TI', 2),
('33333333333', 'senha123', 'Pedro Lima', 'M003', '70000002', '30', 'Apto 202', 'Asa Sul', 'Brasília', 'DF', 'pedro.lima@example.com', 'Engenharia', 3),
('44444444444', 'senha123', 'Ana Costa', 'M004', '70000003', '40', 'Casa', 'Asa Norte', 'Brasília', 'DF', 'ana.costa@example.com', 'Marketing', 1),
('55555555555', 'senha123', 'Lucas Frazão', 'M005', '70000004', '50', 'Apto 303', 'Centro', 'Brasília', 'DF', 'lucas.frazao@example.com', 'Financeiro', 2),
('66666666666', 'senha123', 'Rafaela Dias', 'M006', '70000005', '60', 'Casa', 'Taguatinga', 'Brasília', 'DF', 'rafaela.dias@example.com', 'RH', 2),
('77777777777', 'senha123', 'Carlos Mendes', 'M007', '70000006', '70', 'Apto 404', 'Guará', 'Brasília', 'DF', 'carlos.mendes@example.com', 'Vendas', 1);

INSERT INTO telefone (telefone_PK, telefone) VALUES
(1, 61999910001),
(2, 61999910002),
(3, 61999910003),
(4, 61999910004),
(5, 61999910005),
(6, 61999910006),
(7, 61999910007);

INSERT INTO AREA (idArea, nome) VALUES
(1, 'Administração'),
(2, 'TI'),
(3, 'Engenharia'),
(4, 'Marketing'),
(5, 'Financeiro'),
(6, 'RH'),
(7, 'Vendas');

INSERT INTO gerencia (fk_PESSOA_cpf, fk_AREA_idArea) VALUES
('11111111111', 1),  
('22222222222', 2),  
('33333333333', 3),  
('44444444444', 4),  
('55555555555', 5), 
('66666666666', 6),  
('77777777777', 7); 

INSERT INTO inserido (fk_PESSOA_cpf, fk_AREA_idArea) VALUES
('11111111111', 1),
('22222222222', 2),
('33333333333', 3),
('44444444444', 4),
('55555555555', 5),
('66666666666', 6),
('11111111111', 2);  

INSERT INTO VENDA (idVenda, createdAt, FK_PESSOA_cpf) VALUES
(1, '2024-10-25', '11111111111'),
(2, '2024-10-26', '22222222222'),
(3, '2024-10-27', '33333333333'),
(4, '2024-10-28', '44444444444'),
(5, '2024-10-29', '55555555555'),
(6, '2024-10-30', '66666666666'),
(7, '2024-10-31', '77777777777');

INSERT INTO PRODUTO (idProduto, nome, valor) VALUES
(1, 'Produto A', 50.00),
(2, 'Produto B', 75.00),
(3, 'Produto C', 100.00),
(4, 'Produto D', 150.00),
(5, 'Produto E', 200.00),
(6, 'Produto F', 250.00),
(7, 'Produto G', 300.00);

INSERT INTO vendas_constitui (valor, quantidade, fk_PRODUTO_idProduto, fk_VENDA_idVenda) VALUES
(50.00, 2, 1, 1),   
(75.00, 1, 2, 1),   
(100.00, 1, 3, 2),
(150.00, 1, 4, 3),
(200.00, 1, 5, 4),
(250.00, 1, 6, 5),
(300.00, 1, 7, 6);