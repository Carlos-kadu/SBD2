-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE POPULAÇÃO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 08 tabelas
-- 
-- Ultimas Alteracoes
--   20/10/2024 => Criação do script
-- ---------------------------------------------------------

INSERT INTO PESSOA (cpf, senha, nome) VALUES
('12345678909', 'senhaSegura123', 'João Silva'),
('98765432100', 'senhaFortificada456', 'Maria Souza'),
('12312312312', 'senhaConfiavel789', 'Carlos Pereira');

INSERT INTO GERENTE (email, formacao, cpfPessoa) VALUES
('joao.silva@email.com', 'Administração de Empresas', '12345678909'),
('maria.souza@email.com', 'Gestão de Pessoas', '98765432100'),
('carlos.pereira@email.com', 'Engenharia de Produção', '12312312312');

INSERT INTO telefone (idTelefone, telefone) VALUES
(1, 11999999999),
(2, 21988888888),
(3, 31977777777);

INSERT INTO EMPREGADO (matricula, cep, numero, complemento, bairro, cidade, estado, idTelefone, cpfPessoa) VALUES
('EMP1001', '01001000', '100', 'Bloco A', 'Centro', 'São Paulo', 'SP', 1, '12345678909'),
('EMP1002', '22041010', '200', 'Casa 2', 'Botafogo', 'Rio de Janeiro', 'RJ', 2, '98765432100'),
('EMP1003', '30130000', '300', 'Ap 303', 'Savassi', 'Belo Horizonte', 'MG', 3, '12312312312');

INSERT INTO gerencia (cpfGerente, cpfEmpregado) VALUES
('12345678909', '12345678909'),
('98765432100', '98765432100'),
('12312312312', '12312312312');

INSERT INTO VENDA (idVenda, createdAt, idEmpregado) VALUES
(1, '2024-10-20', '12345678909'),
(2, '2024-10-20', '98765432100'),
(3, '2024-10-20', '12312312312');

INSERT INTO PRODUTO (idProduto, nome, valor) VALUES
(1, 'Notebook', 3500.00),
(2, 'Smartphone', 2500.00),
(3, 'Headset Gamer', 300.00);

INSERT INTO VENDAS (valor, quantidade, idProduto, idVenda) VALUES
(3500.00, 1, 1, 1),
(2500.00, 2, 2, 2),
(300.00, 3, 3, 3);
