-- -------- < aula1exer2 - Evolução 3 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
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
--   22/10/2024 => Ajusta para melhor apresentacao do script;
--              => Retirada de instrucoes que NAO sao SQL no script
--                 que nao aceita outras instrucoes que nao sejam SQL;
--              => Correcao para nomenclatura das restricoes de integridade
--                 para o padrao exigido na disciplina;
--              => Definicao completa do comportamento das FKs no script 
--   28/10/2024 => Criação das tabelas Area Gerencia e constitui;
--              => Correção das restrições
-- 	 04/11/2024 => Alteração do nome da base de dados para aula1exer2evolucao3
-- 				=> Exclusão da tabela inserido
-- 				=> Criação das tabelas GERENTE e EMPREGADO
-- 				=> Alteração nos atributos das tabelas
-- 				=> Adição do auto_increment 
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula1exer2evolucao3;

USE aula1exer2evolucao3;

-- TABELAS
CREATE TABLE PESSOA (
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(8) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE=InnoDB;

CREATE TABLE GERENTE (
    idGerente INT(5) NOT NULL auto_increment,
    email VARCHAR(255) NOT NULL,
    formacao VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES PESSOA(cpf)
		ON DELETE CASCADE
)ENGINE=InnoDB auto_increment=10000;

CREATE TABLE EMPREGADO (
    matricula BIGINT(10) NOT NULL auto_increment,
    cep VARCHAR(8) NOT NULL,
    numero INT(6) NOT NULL,
    complemento VARCHAR(255),
    bairro VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    estado CHAR(2) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
		REFERENCES PESSOA(cpf)
		ON DELETE CASCADE
)ENGINE=InnoDB auto_increment=1000000000;

CREATE TABLE AREA (
    idArea INT(3) NOT NULL auto_increment,
    nome VARCHAR(255) NOT NULL,
    CONSTRAINT AREA_PK PRIMARY KEY (idArea)
)ENGINE=InnoDB auto_increment=100;

CREATE TABLE PRODUTO (
    idProduto INT(6) NOT NULL auto_increment,
    nome VARCHAR(255) NOT NULL,
    valorUnitario DECIMAL(10,2) NOT NULL,
    idArea INT(3) NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea)
		REFERENCES AREA(idArea)
)ENGINE=InnoDB auto_increment=100000;

CREATE TABLE VENDA (
    idVenda INT(6) NOT NULL auto_increment,
    dataVenda DATE NOT NULL,
    matricula BIGINT(10) NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO(matricula)
		ON DELETE RESTRICT
)ENGINE=InnoDB auto_increment=100000;

CREATE TABLE telefone (
    telefone VARCHAR(11) NOT NULL,
    matricula BIGINT(10) NOT NULL,
    CONSTRAINT telefone_UK UNIQUE (telefone, matricula),
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO (matricula)
        ON DELETE CASCADE
)ENGINE=InnoDB;

CREATE TABLE gerencia (
    idGerente INT(5) NOT NULL,
    idArea INT(3) NOT NULL,
    CONSTRAINT gerencia_GERENTE_FK FOREIGN KEY (idGerente)
		REFERENCES GERENTE(idGerente),
	CONSTRAINT gerencia_AREA_FK FOREIGN KEY (idArea)
		REFERENCES AREA(idArea)
)ENGINE=InnoDB;

CREATE TABLE constitui (
    idProduto INT(6) NOT NULL,
    idVenda INT(6) NOT NULL,
    quantidade INT(5) NOT NULL,
    CONSTRAINT constitui_UK UNIQUE (idProduto, idVenda),
    CONSTRAINT constitui_PRODUTO_FK FOREIGN KEY (idProduto)
		REFERENCES PRODUTO(idProduto),
	CONSTRAINT constitui_VENDA_FK FOREIGN KEY (idVenda)
		REFERENCES VENDA(idVenda)
)ENGINE=InnoDB;

