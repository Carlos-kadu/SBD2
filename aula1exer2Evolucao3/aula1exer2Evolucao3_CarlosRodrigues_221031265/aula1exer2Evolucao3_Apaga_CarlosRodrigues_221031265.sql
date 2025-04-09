-- ---------------------   < aula1exer2evolucao3 >   ---------------------
--
--                     SCRIPT APAGA (DDL)  
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2evolucao3
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
-- 		   => 01 Visao
--
-- Ultimas Alteracoes
--   27/10/2024 => Retirada de instrucoes que NAO sao SQL no script
--   28/10/2024 => Adicionando as novas tabelas
--   04/11/2024 => Remoção do comando que apagava a tabela gerencia;
-- 				=> Alteração no comando que apagava a tabela constitui (tabela renomeada para contem);
--   			=> Adição dos comandos que apagam os usuários e perfis criados pelo script de controle.
-- -----------------------------------------------------------------

USE aula1exer2evolucao3;

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
