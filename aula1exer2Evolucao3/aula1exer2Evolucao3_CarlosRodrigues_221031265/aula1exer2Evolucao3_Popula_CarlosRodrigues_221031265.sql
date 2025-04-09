-- ---------------------   < aula1exer2evolucao3 >   ---------------------
--
--                     SCRIPT POPULA (DML)  
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2evolucao3
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
-- 		   => 01 Visao
--
-- Ultimas Alteracoes
--   28/10/2024 => Modificando as tuplas e adicionando mais dados
--   04/11/2024 => Novas tuplas foram adicionadas, refletindo as solicitações do enunciado.
-- -----------------------------------------------------------------

USE aula1exer2evolucao3;

INSERT INTO PESSOA (cpf, senha, nome) VALUES
('12345678901', '7755228', 'Ana Silva'),
('23456789012', '8ghtht', 'Carlos Sousa'),
('34567890123', 'sentgrha3', 'Mariana Costa'),
('45678901234', 'sdefen4ha4', 'Pedro Santos'),
('56789012345', 'gr84426we', 'Juliana Lima'),
('67890123456', 'efe85415', 'Marcelo Teixeira'),
('78901234567', 'wfw5511', 'Fernanda Rocha'),
('89012345678', 'wff515', 'Luis Pereira'),
('90123456789', 'ewffe174', 'Beatriz Andrade'),
('01234567890', 'wfwef5848', 'Roberto Oliveira'),
('11122233344', '8854vdv', 'Mariana Oliveira Santos'),
('55566677788', 'aba44w7', 'Pedro Henrique Lima');

-- Inserindo dados na tabela EMPREGADO (Ana Silva é empregada e tbm gerente)
INSERT INTO EMPREGADO (cep, numero, complemento, bairro, cidade, estado, rua, cpf) VALUES
(1234567, 100, 'Apto 1', 'Centro', 'Cidade A', 'SP', 'Rua A', '12345678901'), -- Ana Silva
(2345678, 200, 'Apto 2', 'Vila B', 'Cidade B', 'RJ', 'Rua B', '23456789012'),
(3456789, 300, 'Apto 3', 'Bairro C', 'Cidade C', 'MG', 'Rua C', '34567890123'),
(4567890, 400, 'Casa', 'Bairro D', 'Cidade D', 'BA', 'Rua D', '45678901234'),
(5678901, 500, 'Apto 4', 'Bairro E', 'Cidade E', 'PR', 'Rua E', '56789012345'),
(6789012, 600, 'Apto 5', 'Bairro F', 'Cidade F', 'RS', 'Rua F', '67890123456'),
(7890123, 700, 'Apto 6', 'Bairro G', 'Cidade G', 'SC', 'Rua G', '78901234567'),
(8901234, 800, 'Apto 8', 'Bairro H', 'Cidade H', 'PE', 'Rua H', '89012345678'),
(9012345, 900, 'Casa', 'Bairro I', 'Cidade I', 'GO', 'Rua I', '90123456789'), -- Beatriz
(9123456, 150, 'Casa 10', 'Bairro J', 'Cidade J', 'RJ', 'Rua J', '01234567890'),
(1234567, 100, 'Apto 101', 'Centro', 'São Paulo', 'SP', 'Rua das Flores', '11122233344'),
(7654321, 200, 'Casa 02', 'Jardim América', 'Rio de Janeiro', 'RJ', 'Av. das Palmeiras', '55566677788');

-- Inserindo dados na tabela GERENTE (Ana é gerente, Beatriz gerencia duas áreas)
INSERT INTO GERENTE (cpf, email, formacao) VALUES
('12345678901', 'ana.gerente@empresa.com', 'Administração'), -- Ana
('23456789012', 'carlos.gerente@empresa.com', 'Gestão'),
('34567890123', 'mariana.gerente@empresa.com', 'Economia'),
('45678901234', 'pedro.gerente@empresa.com', 'Engenharia'),
('56789012345', 'juliana.gerente@empresa.com', 'Contabilidade'),
('67890123456', 'marcelo.gerente@empresa.com', 'Marketing'),
('78901234567', 'fernanda.gerente@empresa.com', 'RH'),
('90123456789', 'beatriz.gerente@empresa.com', 'Finanças'), -- Beatriz
('89012345678', 'luis.gerente@empresa.com', 'Logística'),
('01234567890', 'roberto.gerente@empresa.com', 'Recursos Humanos');

INSERT INTO AREA (nomeArea, cpf) VALUES
('Tecnologia', '12345678901'),
('Limpeza', '23456789012'),
('Alimentos', '34567890123'),
('Bebidas', '45678901234'),
('Vestuário', '56789012345'),
('Esportes', '67890123456'),
('Móveis', '78901234567'),
('Mercearia', '90123456789'), -- Beatriz gerenciando mercearia
('Açougue', '90123456789'), -- Beatriz gerenciando Açougue
('Hortifruti', '01234567890');

INSERT INTO PRODUTO (nome, precoUnitario, idArea) VALUES
('Laptop', 3500.00, 1),
('Detergente', 5.00, 2),
('Arroz 5kg', 25.00, 3),
('Refrigerante 2L', 7.50, 4),
('Camiseta', 35.00, 5),
('Bola de Futebol', 50.00, 6),
('Mesa de Jantar', 1200.00, 7),
('Impressora', 500.00, 1),
('Sabão em Pó', 10.00, 2),
('Feijão 1kg', 8.00, 3);

INSERT INTO VENDA (dtVenda, matricula) VALUES
('2024-10-01', 1),
('2024-10-02', 2),
('2024-10-03', 3),
('2024-10-04', 4),
('2024-10-05', 5),
('2024-10-06', 6),
('2024-10-07', 7),
('2024-10-08', 1),
('2024-10-09', 2),
('2024-10-10', 3);

INSERT INTO contem (idProduto, idVenda, quantidade) VALUES
(1, 1, 2), -- Venda com mais de um item e mais de um produto
(2, 1, 1), -- Venda com mais de um item e mais de um produto
(3, 2, 3),
(4, 3, 1),
(5, 4, 2),
(6, 5, 1),
(7, 6, 1),
(1, 8, 1), -- Venda com mais de um produto
(2, 8, 1), -- Venda com mais de um produto
(5, 9, 1), 
(6, 10, 1),
(3, 10, 2);

INSERT INTO telefone (matricula, numeroTelefone) VALUES
(1, 61987654321),
(2, 61976543210),
(3, 61965432109),
(4, 61954321098),
(5, 61943210987),
(6, 61932109876),
(7, 61921098765),
(8, 61910203040),
(9, 61920304050),
(10, 61930405060);
