-- -------- < aula1exer2 - Evolução 4 Oracle > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Pedro Henrique Rodrigues de Carvalho
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
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
--
-- ---------------------------------------------------------

-- TABELAS
DROP TABLE VRVR3_CONSTITUI;
DROP TABLE VRVR3_GERENCIA;
DROP TABLE VRVR3_TELEFONE;
DROP TABLE VRVR3_PRODUTO;
DROP TABLE VRVR3_VENDA;
DROP TABLE VRVR3_AREA;
DROP TABLE VRVR3_GERENTE;
DROP TABLE VRVR3_EMPREGADO;
DROP TABLE VRVR3_PESSOA;


-- SEQUENCIAS
DROP SEQUENCE VRVR3_SEQ_AREA;
DROP SEQUENCE VRVR3_SEQ_EMPREGADO;
DROP SEQUENCE VRVR3_SEQ_GERENTE;
DROP SEQUENCE VRVR3_SEQ_PRODUTO;
DROP SEQUENCE VRVR3_SEQ_VENDA;
