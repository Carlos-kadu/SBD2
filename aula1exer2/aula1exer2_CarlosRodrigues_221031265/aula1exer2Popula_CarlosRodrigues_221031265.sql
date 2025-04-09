-- ---------------------   < aula1exer2 >   ---------------------
--
--                     SCRIPT POPULA (DML)  
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- -----------------------------------------------------------------

USE aula1exer2;

INSERT INTO PESSOA (cpf, nome, senhaAcesso) VALUES
(12345678901, 'Carlos Silva', 'senha123'),
(23456789012, 'Ana Pereira', 'senha456'),
(34567890123, 'João Souza', 'senha789');

INSERT INTO EMPREGADO (numero, rua, bairro, complemento, cidade, estado, cep, cpf) VALUES
(100, 'Rua A', 'Centro', 'Apto 101', 'São Paulo', 'SP', 1234567, 12345678901),
(101, 'Rua B', 'Vila Nova', NULL, 'Rio de Janeiro', 'RJ', 2345678, 23456789012),
(102, 'Rua C', 'Jardim das Flores', 'Casa', 'Curitiba', 'PR', 3456789, 34567890123);

INSERT INTO GERENTE (formacaoEscolar, email, cpf) VALUES
('Administração', 'carlos.silva@email.com', 12345678901),
('Administração', 'ana.pereira@email.com', 23456789012),
('Economia', 'joao.souza@email.com', 34567890123);

INSERT INTO VENDA (dataVenda, matricula) VALUES
('2024-10-01', 1),
('2024-10-02', 2),
('2024-10-03', 3);

INSERT INTO AREA (nomeArea, cpf) VALUES
('Tecnologia', 12345678901),
('Alimentos e bebidas', 23456789012),
('Moda', 34567890123);

INSERT INTO PRODUTOS (nome, precoUnitario, idArea) VALUES
('Notebook', 2500.00, 1),
('Smartphone', 1500.00, 1),
('Tablet', 800.00, 1);

INSERT INTO telefone (idTelefone, telefone) VALUES
(1, 11912345678),
(2, 21987654321),
(3, 41912345678);

INSERT INTO contem (idVenda, idProduto, quantidade) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3);
