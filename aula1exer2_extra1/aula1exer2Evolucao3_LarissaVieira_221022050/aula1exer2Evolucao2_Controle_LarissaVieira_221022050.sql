-- -------- < aula1exer2 - Evolução 3 > --------
--
--                    SCRIPT DE CONTROLE
--
-- Data Criacao ...........: 28/10/2024
-- Autor(es) ..............: Danilo César Tertuliano Melo, Larissa de Jesus Vieira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Perfis (role)
--         => 08 Usuários
-- 
-- Ultimas Alteracoes
-- 	04/11/2024 => Adição dos perfis
-- 			   => Modificação e adição de novos usuários
-- ---------------------------------------------------------

USE aula1exer2evolucao3;


CREATE ROLE GERENTE;
GRANT SELECT ON aula1exer2evolucao3.EMPREGADO TO GERENTE;
GRANT SELECT ON aula1exer2evolucao3.GERENTE TO GERENTE;
GRANT SELECT ON aula1exer2evolucao3.PESSOA TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.VENDA TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.constitui TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.telefone TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.gerencia TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.PRODUTO TO GERENTE;
GRANT DELETE, INSERT, SELECT, UPDATE ON aula1exer2evolucao3.AREA TO GERENTE;

CREATE ROLE EMPREGADO;
GRANT SELECT ON aula1exer2evolucao3.* TO EMPREGADO;
GRANT INSERT ON aula1exer2evolucao3.VENDA TO EMPREGADO;
GRANT INSERT ON aula1exer2evolucao3.constitui TO EMPREGADO;

CREATE ROLE SUPERIOR;
GRANT ALL PRIVILEGES ON aula1exer2evolucao3.* TO SUPERIOR;


CREATE USER 'admins' IDENTIFIED BY '1admin';
GRANT SUPERIOR TO 'admins';

CREATE USER 'anamaria' IDENTIFIED BY '2anam';
GRANT GERENTE TO 'anamaria';

CREATE USER 'ruicarlos' IDENTIFIED BY '3ruic';
GRANT GERENTE TO 'ruicarlos';

CREATE USER 'maria' IDENTIFIED BY '4maria';
GRANT EMPREGADO TO 'maria';

CREATE USER 'paulo' IDENTIFIED BY '5paulo';
GRANT EMPREGADO TO 'paulo';

CREATE USER 'jose' IDENTIFIED BY '6jose';
GRANT EMPREGADO TO 'jose';

CREATE USER 'giovana' IDENTIFIED BY '7giovana';
GRANT EMPREGADO TO 'giovana';

CREATE USER 'pedro' IDENTIFIED BY '8pedro';
GRANT EMPREGADO TO 'pedro';
