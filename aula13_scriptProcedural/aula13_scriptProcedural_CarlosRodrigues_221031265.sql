-- -------- < aula13_scriptProcedural > --------
--
--                    SCRIPT PROCEDURAL (DML E DDL)
--
-- Data Criacao ...........: 16/12/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- Banco de Dados .........: MySQL 8.0.36
-- Base de Dados (nome) ...: agenda
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Funções
--         => 01 Procedimento
-- ---------------------------------------------------------

DELIMITER //

-- 1) Crie uma função que conte quantas tuplas tem na tabela PESSOA;
CREATE FUNCTION FN_CONTAPESSOA () RETURNS INT
READS SQL DATA
BEGIN
  DECLARE 
    qtdPessoas INT;
SELECT 
    COUNT(*)
INTO qtdPessoas FROM
    pessoa;
  RETURN qtdPessoas;
END 
//

SELECT FN_CONTAPESSOA();
 

-- 2) Elabore um procedimento que conte quantos telefones têm uma pessoa específica 
-- (atividade a ser realizada com instrução que apresente o valor do parâmetro de saída);
CREATE PROCEDURE PC_CONTATELEFONES (idPessoa INT)
READS SQL DATA
BEGIN
  DECLARE 
    qtdTelefones INT;
SELECT 
    COUNT(*)
INTO qtdTelefones FROM
    telefone t
WHERE
    t.idPessoa = idPessoa;
SELECT qtdTelefones AS 'Total_Telefones';
END 
//
 
CALL PC_CONTATELEFONES(1);


-- 3) Crie uma função que mostre a quantidade de produtos específicos que será solicitado pelo nome do produto;
CREATE FUNCTION FN_QTDPRODUTOS(nome VARCHAR(80)) RETURNS INT
READS SQL DATA
BEGIN
DECLARE
  qtdProdutos INT;
SELECT 
    qtde
INTO qtdProdutos FROM
    produtos p
WHERE
    p.nome = nome;
  RETURN qtdProdutos;
END
//
 
SELECT FN_QTDPRODUTOS('Cerveja');


-- 4) Faça uma função que calcule para um produto específico a quantidade financeira em estoque que está 
-- armazenada nessa base de dados (total em valor financeiro R$).

CREATE FUNCTION FN_TOTALFINANCEIRO(nome VARCHAR(80)) RETURNS FLOAT
READS SQL DATA
BEGIN
DECLARE
  totalFinanceiro FLOAT;
  SELECT qtde * preco INTO totalFinanceiro FROM produtos p WHERE p.nome = nome;
  RETURN totalFinanceiro;
END
//

SELECT FN_TOTALFINANCEIRO('Cerveja');

DELIMITER ;
 
