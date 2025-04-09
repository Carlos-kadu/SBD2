-- -------- < aula1exer2Evolucao4_Oracle > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
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
--   22/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--   04/11/2024 => Retirada da tabela inserido
-- 				=> Adição das tabelas GERENTE, EMPREGADO
-- 				=> Adição da exclusão dos perfis e dos usuários
--   16/11/2014 => Adição da exclusão da view
--   21/11/2024 => Remoção dos comandos que apagavam os usuários, a view e roles;
--              => Correções nos nomes das tabelas incluindo a assinatura especifica do aluno;
--              => Adição da exclusão das SEQUENCEs
-- ---------------------------------------------------------

DROP TABLE "CER_CONSTITUI";
DROP TABLE "CER_GERENCIA";
DROP TABLE "CER_TELEFONE";
DROP TABLE "CER_PRODUTO";
DROP TABLE "CER_VENDA";
DROP TABLE "CER_AREA";
DROP TABLE "CER_GERENTE";
DROP TABLE "CER_EMPREGADO";
DROP TABLE "CER_PESSOA";

DROP SEQUENCE "CER_SEQ_AREA";
DROP SEQUENCE "CER_SEQ_PRODUTO";
DROP SEQUENCE "CER_SEQ_GERENTE";
DROP SEQUENCE "CER_SEQ_EMPREGADO";
DROP SEQUENCE "CER_SEQ_VENDA";
