-- ---------------------   < aula1exer2 >   ---------------------
--
--                     SCRIPT DE CRIAÇÃO (DDL)  
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;
USE aula1exer2;

CREATE TABLE PESSOA (
    cpf BIGINT(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    senhaAcesso VARCHAR(40) NOT NULL,
    
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
)ENGINE = InnoDB;

CREATE TABLE EMPREGADO (
    matricula INT(4) NOT NULL AUTO_INCREMENT,
    numero INT(4) NOT NULL,
    rua VARCHAR(30) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    complemento VARCHAR(30),
    cidade VARCHAR(30) NOT NULL,
    estado CHAR(2) NOT NULL,
    cep INT(7) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    
    CONSTRAINT EMPREGADO_PK primary key (matricula),
    constraint EMPREGADO_PESSOA_FK foreign key (cpf) references PESSOA (cpf)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE GERENTE (
    formacaoEscolar VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    
    CONSTRAINT GERENTE_PK PRIMARY KEY (cpf),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA (cpf)
)ENGINE = InnoDB;

CREATE TABLE VENDA (
    idVenda INT(4) NOT NULL AUTO_INCREMENT,
    dataVenda DATE NOT NULL,
    matricula INT(4) NOT NULL,
    
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO (matricula)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AREA (
    idArea INT(4) NOT NULL AUTO_INCREMENT,
    nomeArea VARCHAR(30) NOT NULL,
    cpf BIGINT(11) NOT NULL,
    
	CONSTRAINT AREA_PK PRIMARY KEY (idArea),
    CONSTRAINT AREA_GERENTE_FK FOREIGN KEY (cpf) REFERENCES GERENTE (cpf)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTOS (
    idProduto INT(4) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    precoUnitario DECIMAL(6,2) NOT NULL,
    idArea INT(4) NOT NULL,
    
    CONSTRAINT PRODUTOS_PK PRIMARY KEY (idProduto),
    CONSTRAINT PRODUTOS_AREA_FK FOREIGN KEY (idArea) REFERENCES AREA (idArea)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone (
    idTelefone INT(4) NOT NULL,
    telefone BIGINT(12) NOT NULL,
    constraint telefone_UK UNIQUE (idTelefone, telefone)
)ENGINE = InnoDB;

CREATE TABLE contem (
    idVenda INT(4) NOT NULL,
    idProduto INT(4) NOT NULL,
    quantidade INT(3) NOT NULL,
    
    CONSTRAINT contem_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA (idVenda),
    CONSTRAINT contem_PRODUTOS_FK FOREIGN KEY (idProduto) REFERENCES PRODUTOS (idProduto)
)ENGINE = InnoDB;
 