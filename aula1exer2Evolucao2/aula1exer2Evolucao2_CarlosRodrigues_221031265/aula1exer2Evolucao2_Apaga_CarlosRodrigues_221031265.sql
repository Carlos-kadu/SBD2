-- ---------------------   < aula1exer2Evolucao2 >   ---------------------
--
--                     SCRIPT APAGA (DDL)  
--
-- Data Criacao ...........: 27/10/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
--
--   27/10/2024 => Retirada de instrucoes que NAO sao SQL no script
-- -----------------------------------------------------------------

USE aula1exer2Evolucao2;

DROP TABLE contem;
DROP TABLE telefone;
DROP TABLE PRODUTO;
DROP TABLE VENDA;
DROP TABLE AREA;
DROP TABLE GERENTE;
DROP TABLE EMPREGADO;
DROP TABLE PESSOA;

-- Removendo usuários
DROP USER 'admins';
DROP USER 'anamaria';
DROP USER 'ruicarlos';
DROP USER 'maria';
DROP USER 'paulo';
DROP USER 'jose';
DROP USER 'giovana';
DROP USER 'pedro';

-- Removendo perfis
DROP ROLE empregado;
DROP ROLE gerente;
DROP ROLE superior;

FLUSH PRIVILEGES;
