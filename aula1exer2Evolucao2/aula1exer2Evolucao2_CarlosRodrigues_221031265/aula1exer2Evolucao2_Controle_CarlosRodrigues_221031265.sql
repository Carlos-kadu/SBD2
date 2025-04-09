-- ---------------------   < aula1exer2Evolucao2 >   ---------------------
--
--                    SCRIPT CONTROLE (DDL)
-- 
-- Data Criacao ...........: 16/06/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 03 Perfis (role)
--         => 08 Usuarios
-- -----------------------------------------------------------------

USE aula1exer2Evolucao2;

-- Perfil: empregado
-- privilégio de consulta em TODAS as tabelas do projeto, além do privilégio de inserção somente nas tabelas responsáveis 
-- pelo processo de venda e itens de venda;
CREATE ROLE empregado;
GRANT SELECT ON aula1exer2Evolucao2.* TO empregado;
GRANT INSERT ON aula1exer2Evolucao2.VENDA TO empregado;
GRANT INSERT ON aula1exer2Evolucao2.contem TO empregado;

-- Perfil: gerente
-- privilégio de consulta, inserção, remoção e modificação em TODAS as tabelas, com exceção das tabelas 
-- PESSOA, EMPREGADO e GERENTE que este perfil só terá privilégio de consulta;
CREATE ROLE gerente;
GRANT SELECT ON aula1exer2Evolucao2.PESSOA TO gerente;
GRANT SELECT ON aula1exer2Evolucao2.EMPREGADO TO gerente;
GRANT SELECT ON aula1exer2Evolucao2.GERENTE TO gerente;
GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2Evolucao2.AREA TO gerente;
GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2Evolucao2.VENDA TO gerente;
GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2Evolucao2.PRODUTO TO gerente;
GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2Evolucao2.telefone TO gerente;
GRANT SELECT, INSERT, UPDATE, DELETE ON aula1exer2Evolucao2.contem TO gerente;

-- Perfil: superior
-- usuário que terá todos os privilégio SOMENTE DESTA BASE DE DADOS no banco de dados (SGBD) em que o projeto 
-- for implementado (corresponderá ao DBA somente desta base de dados).
CREATE ROLE superior;
GRANT ALL PRIVILEGES ON aula1exer2Evolucao2.* TO superior;

-- ---------------------------------------------------- 
-- Criando os usuários e associando aos perfis
-- ----------------------------------------------------

-- Usuário para o perfil superior (DBA da base de dados)
CREATE USER 'admins' IDENTIFIED BY '1admin';
GRANT superior TO 'admins';

-- Usuários para o perfil gerente
CREATE USER 'anamaria' IDENTIFIED BY '2anam';
GRANT gerente TO 'anamaria';

CREATE USER 'ruicarlos' IDENTIFIED BY '3ruic';
GRANT gerente TO 'ruicarlos';

-- Usuários para o perfil empregado
CREATE USER 'maria' IDENTIFIED BY '4maria';
GRANT empregado TO 'maria';

CREATE USER 'paulo' IDENTIFIED BY '5paulo';
GRANT empregado TO 'paulo';

CREATE USER 'jose' IDENTIFIED BY '6jose';
GRANT empregado TO 'jose';

CREATE USER 'giovana' IDENTIFIED BY '7giovana';
GRANT empregado TO 'giovana';

CREATE USER 'pedro' IDENTIFIED BY '8pedro';
GRANT empregado TO 'pedro';


FLUSH PRIVILEGES;
