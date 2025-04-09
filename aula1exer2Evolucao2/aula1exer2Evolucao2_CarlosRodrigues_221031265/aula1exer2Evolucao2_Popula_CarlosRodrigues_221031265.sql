-- ---------------------   < aula1exer2Evolucao2 >   ---------------------
--
--                     SCRIPT POPULA (DML)  
--
-- Data Criacao ...........: 27/10/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
-- -----------------------------------------------------------------

USE aula1exer2Evolucao2;

INSERT INTO PESSOA (cpf, senha, nome) VALUES
('12345678901', 'senha1', 'Ana Silva'),
('23456789012', 'senha2', 'Carlos Sousa'),
('34567890123', 'senha3', 'Mariana Costa'),
('45678901234', 'senha4', 'Pedro Santos'),
('56789012345', 'senha5', 'Juliana Lima'),
('67890123456', 'senha6', 'Marcelo Teixeira'),
('78901234567', 'senha7', 'Fernanda Rocha');

-- Inserindo dados e incluindo Ana Silva como empregada
INSERT INTO EMPREGADO (cep, numero, complemento, bairro, cidade, estado, rua, cpf) VALUES
(1234567, 100, 'Apto 1', 'Centro', 'Cidade A', 'SP', 'Rua A', '12345678901'), -- Ana Silva como empregada
(2345678, 200, 'Apto 2', 'Vila B', 'Cidade B', 'RJ', 'Rua B', '23456789012'),
(3456789, 300, 'Apto 3', 'Bairro C', 'Cidade C', 'MG', 'Rua C', '34567890123'),
(4567890, 400, 'Casa', 'Bairro D', 'Cidade D', 'BA', 'Rua D', '45678901234'),
(5678901, 500, 'Apto 4', 'Bairro E', 'Cidade E', 'PR', 'Rua E', '56789012345'),
(6789012, 600, 'Apto 5', 'Bairro F', 'Cidade F', 'RS', 'Rua F', '67890123456'),
(7890123, 700, 'Apto 6', 'Bairro G', 'Cidade G', 'SC', 'Rua G', '78901234567');

-- Inserindo dados e incluindo Ana Silva como gerente
INSERT INTO GERENTE (cpf, email, formacao) VALUES
('12345678901', 'ana.gerente@empresa.com', 'Administração'), -- Ana Silva como gerente
('23456789012', 'carlos.gerente@empresa.com', 'Gestão'),
('34567890123', 'mariana.gerente@empresa.com', 'Economia'),
('45678901234', 'pedro.gerente@empresa.com', 'Engenharia'),
('56789012345', 'juliana.gerente@empresa.com', 'Contabilidade'),
('67890123456', 'marcelo.gerente@empresa.com', 'Marketing'),
('78901234567', 'fernanda.gerente@empresa.com', 'RH');

INSERT INTO AREA (nomeArea, cpf) VALUES
('Tecnologia', '12345678901'),
('Limpeza', '23456789012'),
('Alimentos', '34567890123'),
('Bebidas', '45678901234'),
('Vestuário', '56789012345'),
('Esportes', '67890123456'),
('Móveis', '78901234567');

INSERT INTO PRODUTO (nome, precoUnitario, idArea) VALUES
('Laptop', 3500.00, 1),
('Detergente', 5.00, 2),
('Arroz 5kg', 25.00, 3),
('Refrigerante 2L', 7.50, 4),
('Camiseta', 35.00, 5),
('Bola de Futebol', 50.00, 6),
('Mesa de Jantar', 1200.00, 7);


INSERT INTO VENDA (dtVenda, matricula) VALUES
('2024-10-01', 1),
('2024-10-02', 2),
('2024-10-03', 3),
('2024-10-04', 4),
('2024-10-05', 5),
('2024-10-06', 6),
('2024-10-07', 7);

INSERT INTO contem (idProduto, idVenda, quantidade) VALUES
(1, 1, 2), -- Venda com mais de um item e mais de um produto
(2, 1, 1), -- Venda com mais de um item e mais de um produto
(3, 2, 3),
(4, 3, 1),
(5, 4, 2),
(6, 5, 1),
(7, 6, 1);

INSERT INTO telefone (matricula, ddd, numeroTelefone) VALUES
(1, 11, 987654321),
(2, 21, 976543210),
(3, 31, 965432109),
(4, 41, 954321098),
(5, 51, 943210987),
(6, 61, 932109876),
(7, 71, 921098765);
