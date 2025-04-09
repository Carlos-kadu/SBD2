-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE CONTROLE
--
-- Data Criacao ...........: 28/10/2024
-- Autor(es) ..............: Danilo César Tertuliano Melo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 08 tabelas
-- 
-- Ultimas Alteracoes
--
-- ---------------------------------------------------------

USE aula1exer2;


CREATE USER 'empregado'@'localhost' IDENTIFIED BY 'senha_empregAdo12!';

GRANT SELECT ON aula1exer2.* TO 'empregado'@'localhost';


CREATE USER 'gerente'@'localhost' IDENTIFIED BY 'senha_gerEnte12!';

GRANT SELECT, INSERT ON aula1exer2.PESSOA TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.telefone TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.AREA TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.gerencia TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.inserido TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.VENDA TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.PRODUTO TO 'gerente'@'localhost';
GRANT SELECT, INSERT ON aula1exer2.vendas_constitui TO 'gerente'@'localhost';

CREATE USER 'superior'@'localhost' IDENTIFIED BY 'senha_superioR12@';

GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2.* TO 'superior'@'localhost';

FLUSH PRIVILEGES;
