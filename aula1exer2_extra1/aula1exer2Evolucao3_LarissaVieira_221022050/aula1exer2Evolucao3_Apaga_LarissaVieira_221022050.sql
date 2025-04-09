-- -------- < aula1exer2 - Evolução 3 > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Perfis (role)
--         => 08 Usuários
-- 
-- Ultimas Alteracoes
--   22/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--   04/11/2024 => Retirada da tabela inserido
-- 				=> Adição das tabelas GERENTE, EMPREGADO
-- 				=> Adição da exclusão dos perfis e dos usuários
--
-- ---------------------------------------------------------

USE aula1exer2evolucao3;

DROP TABLE constitui;
DROP TABLE gerencia;
DROP TABLE telefone;
DROP TABLE PRODUTO;
DROP TABLE VENDA;
DROP TABLE AREA;
DROP TABLE GERENTE;
DROP TABLE EMPREGADO;
DROP TABLE PESSOA;

DROP USER 'admins';
DROP USER 'anamaria';
DROP USER 'ruicarlos';
DROP USER 'maria';
DROP USER 'paulo';
DROP USER 'jose';
DROP USER 'giovana';
DROP USER 'pedro';

DROP ROLE GERENTE;
DROP ROLE EMPREGADO;
DROP ROLE SUPERIOR;
