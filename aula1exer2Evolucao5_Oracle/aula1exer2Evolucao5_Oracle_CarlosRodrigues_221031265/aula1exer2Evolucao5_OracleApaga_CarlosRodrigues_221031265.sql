-- -------- < aula1exer2Evolucao5_Oracle > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
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
--   22/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--   04/11/2024 => Retirada da tabela inserido
-- 				=> Adição das tabelas GERENTE, EMPREGADO
-- 				=> Adição da exclusão dos perfis e dos usuários
--   20/11/2024 => Mudança do script de MySQL para Oracle
--   21/11/2024 => Ajuste para realizacao de script coerente com a solicitacao
--                 e NAO complicando a realizacao do que foi solicitado
--              => Remocao de instrucoes que removiam objetos do banco que nem foram criados como Usuarios e Roles
--   25/11/2024 => Foi adicionado a instrução para deleção da view
-- ---------------------------------------------------------

-- TABELAS
DROP TABLE CER_CONSTITUI;
DROP TABLE CER_GERENCIA;
DROP TABLE CER_TELEFONE;
DROP TABLE CER_PRODUTO;
DROP TABLE CER_VENDA;
DROP TABLE CER_AREA;
DROP TABLE CER_GERENTE;
DROP TABLE CER_EMPREGADO;
DROP TABLE CER_PESSOA;


-- SEQUENCIAS
DROP SEQUENCE CER_SEQ_AREA;
DROP SEQUENCE CER_SEQ_EMPREGADO;
DROP SEQUENCE CER_SEQ_GERENTE;
DROP SEQUENCE CER_SEQ_PRODUTO;
DROP SEQUENCE CER_SEQ_VENDA;

DROP VIEW CER_QUANTIDADE_VENDAS;