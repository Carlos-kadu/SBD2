-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE DELEÇÃO (DDL)
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
--   22/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--
-- ---------------------------------------------------------

USE aula1exer2;

DELETE FROM vendas_constitui;
DELETE FROM PRODUTO;
DELETE FROM VENDA;
DELETE FROM inserido;
DELETE FROM gerencia;
DELETE FROM AREA;
DELETE FROM telefone;
DELETE FROM PESSOA;













-- ---------------------
desc mysql.user;
select User, Host, Password from mysql.user; 
-- ---------------------