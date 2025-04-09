-- ---------------------   < aula4extra1 >   ---------------------
--
--                     SCRIPT DE CRIAÇÃO E POPULA (DDL e DML)  
--
-- Data Criacao ...........: 31/10/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula4extra1
-- 
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4extra1;
USE aula4extra1;

CREATE TABLE ESTADO(
	sigla VARCHAR(2) not null,
	nome VARCHAR(20) not null,
    
    constraint ESTADO_PK primary key (sigla)
) Engine = innoDB;

CREATE TABLE CIDADE(
	codigo int(5) NOT NULL auto_increment,
	nome varchar(50) NOT NULL,
    sigla varchar(2) NOT NULL,
	habitantes int NOT NULL,

	CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK foreign key (sigla) references ESTADO(sigla),
    CONSTRAINT CIDADE_UK unique(sigla, nome),
    CONSTRAINT HABITANTE_CK CHECK (habitantes  > 1000 )
)engine = innoDB auto_increment = 1;

INSERT INTO ESTADO(sigla, nome) values
	('DF', 'Distrito Federal'),
    ('SP', 'São Paulo'),
    ('RJ', 'Rio de Janeiro');
    
INSERT INTO CIDADE(nome, sigla, habitantes) values
	('Jundiaí', 'SP', 460313),
    ('Piracicaba', 'SP', 438827),
    ('Carapicuíba', 'SP', 398462),
    ('Aperibé', 'RJ', 3300159),
    ('Angra dos Reis', 'RJ', 3300100),
    ('Gama', 'DF', 150000),
    ('Taguatinga', 'DF', 208177);