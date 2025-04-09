-- ---------------------   < aula1exer2evolucao3 >   ---------------------
--
--                     SCRIPT DE CRIAÇÃO (DDL)  
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
--   22/10/2024 => Ajusta para melhor apresentacao do script;
--              => Retirada de instrucoes que NAO sao SQL no script
--                 que nao aceita outras instrucoes que nao sejam SQL;
--              => Correcao para nomenclatura das restricoes de integridade
--                 para o padrao exigido na disciplina;
--              => Definicao completa do comportamento das FKs no script 
--   28/10/2024 => Criação das tabelas Area Gerencia e constitui;
--              => Correção das restrições
--   04/11/2024 => Remoção da tabela gerencia; 
-- 				   Tabela constitui renomeada para contem;
--  			   Adição do AUTO INCREMENT nos atributos pertinentes;
-- 				   Atributos renomeados de acordo com os critérios estabelecidos pela disciplina.
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2evolucao3;
USE aula1exer2evolucao3;

CREATE TABLE PESSOA (
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE = InnoDB;

CREATE TABLE EMPREGADO (
    matricula INT(4) NOT NULL AUTO_INCREMENT,
    cep INT(7) NOT NULL,
    numero INT(4) NOT NULL,
    complemento VARCHAR(20) NOT NULL,
    bairro VARCHAR(25) NOT NULL,
    cidade VARCHAR(25) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    rua VARCHAR(25) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES PESSOA(cpf)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE GERENTE (
    cpf VARCHAR(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    formacao VARCHAR(30) NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY (cpf),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES PESSOA(cpf)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE VENDA (
    idVenda INT(4) NOT NULL AUTO_INCREMENT,
    dtVenda DATE NOT NULL,
    matricula INT(4) NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES EMPREGADO(matricula)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AREA (
    idArea INT(4) NOT NULL AUTO_INCREMENT,
    nomeArea VARCHAR(30) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    CONSTRAINT AREA_PK PRIMARY KEY (idArea),
    CONSTRAINT AREA_GERENTE_FK FOREIGN KEY (cpf)
        REFERENCES GERENTE(cpf)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    idProduto INT(4) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    precoUnitario DECIMAL(6,2) NOT NULL,
    idArea INT(4) NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea)
        REFERENCES AREA(idArea)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE telefone (
    matricula INT(4) NOT NULL,
    numeroTelefone BIGINT(9) NOT NULL,
    
    CONSTRAINT telefone_UK UNIQUE (matricula, numeroTelefone),
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES EMPREGADO(matricula)
        ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE contem (
    idProduto INT(4) NOT NULL,
    idVenda INT(4) NOT NULL,
    quantidade INT(3) NOT NULL,
    CONSTRAINT contem_PRODUTO_FK FOREIGN KEY (idProduto)
        REFERENCES PRODUTO(idProduto) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT contem_VENDA_FK FOREIGN KEY (idVenda)
        REFERENCES VENDA(idVenda) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB;
