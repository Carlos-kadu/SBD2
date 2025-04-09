-- -------- < aula1exer2 - Evolução 4 Oracle > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Pedro Henrique Rodrigues de Carvalho
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 	   => 03 Perfis (role)
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
--   04/11/2024 => Alteração do nome da base de dados para aula1exer2evolucao3
-- 				=> Exclusão da tabela inserido
-- 				=> Criação das tabelas GERENTE e EMPREGADO
-- 				=> Alteração nos atributos das tabelas
-- 				=> Adição do auto_increment 
--   20/11/2024 => Alteração do nome da base de dados para VRVR3
-- 		=> Mudança do script de MySQL para Oracle
--   21/11/2024 => Ajustando script para ser cooperativo com todos envolvidos no projeto
--              => Correcao para implementacao mais simples usando recursos exigidos, sem complicar a solucao.
-- ---------------------------------------------------------


-- SEQUENCIAS
CREATE SEQUENCE VRVR3_SEQ_GERENTE
  START WITH 10000 INCREMENT BY 1;

CREATE SEQUENCE VRVR3_SEQ_EMPREGADO
  START WITH 1000000000 INCREMENT BY 1;

CREATE SEQUENCE VRVR3_SEQ_AREA
  START WITH 100 INCREMENT BY 1;

CREATE SEQUENCE VRVR3_SEQ_PRODUTO
  START WITH 100000 INCREMENT BY 1;

CREATE SEQUENCE VRVR3_SEQ_VENDA
  START WITH 100000 INCREMENT BY 1;


-- TABELAS
CREATE TABLE VRVR3_PESSOA (
    cpf VARCHAR2(11) NOT NULL,
    senha VARCHAR2(8) NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT VRVR3_PESSOA_PK PRIMARY KEY (cpf)
);


CREATE TABLE VRVR3_GERENTE (
    idGerente NUMBER(5)  DEFAULT VRVR3_SEQ_GERENTE.nextval NOT NULL,
    email VARCHAR2(255) NOT NULL,
    formacao VARCHAR2(255) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT VRVR3_GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT VRVR3_GERENTE_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES VRVR3_PESSOA(cpf)
);


CREATE TABLE VRVR3_EMPREGADO (
    matricula NUMBER(10) DEFAULT VRVR3_SEQ_EMPREGADO.nextval NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    numero NUMBER(6) NOT NULL,
    complemento VARCHAR2(255),
    bairro VARCHAR2(255) NOT NULL,
    cidade VARCHAR2(255) NOT NULL,
    estado CHAR(2) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT VRVR3_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT VRVR3_EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES VRVR3_PESSOA(cpf)
);


CREATE TABLE VRVR3_AREA (
    idArea NUMBER(3) DEFAULT VRVR3_SEQ_AREA.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT VRVR3_AREA_PK PRIMARY KEY (idArea)
);


CREATE TABLE VRVR3_PRODUTO (
    idProduto NUMBER(6) DEFAULT VRVR3_SEQ_PRODUTO.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    valorUnitario NUMBER(10, 2) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT VRVR3_PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT VRVR3_PRODUTO_AREA_FK FOREIGN KEY (idArea)
        REFERENCES VRVR3_AREA(idArea)
);


CREATE TABLE VRVR3_VENDA (
    idVenda NUMBER(6) DEFAULT  VRVR3_SEQ_VENDA.nextval NOT NULL,
    dataVenda DATE NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT VRVR3_VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VRVR3_VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES VRVR3_EMPREGADO(matricula)
);


CREATE TABLE VRVR3_TELEFONE (
    telefone VARCHAR2(11) NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT VRVR3_TELEFONE_UK UNIQUE (telefone, matricula),
    CONSTRAINT VRVR3_TELEFONE_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES VRVR3_EMPREGADO(matricula)
        ON DELETE CASCADE
);


CREATE TABLE VRVR3_GERENCIA (
    idGerente NUMBER(5) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT VRVR3_GERENCIA_GERENTE_FK FOREIGN KEY (idGerente)
        REFERENCES VRVR3_GERENTE(idGerente),
    CONSTRAINT VRVR3_GERENCIA_AREA_FK FOREIGN KEY (idArea)
        REFERENCES VRVR3_AREA(idArea)
);


CREATE TABLE VRVR3_CONSTITUI (
    idProduto NUMBER(6) NOT NULL,
    idVenda NUMBER(6) NOT NULL,
    quantidade NUMBER(5) NOT NULL,
    CONSTRAINT VRVR3_CONSTITUI_UK UNIQUE (idProduto, idVenda),
    CONSTRAINT VRVR3_CONSTITUI_PRODUTO_FK FOREIGN KEY (idProduto)
        REFERENCES VRVR3_PRODUTO(idProduto),
    CONSTRAINT VRVR3_CONSTITUI_VENDA_FK FOREIGN KEY (idVenda)
        REFERENCES VRVR3_VENDA(idVenda)
);


/*
-- TRIGGERS
-- Criar triggers para usar as sequences
CREATE OR REPLACE TRIGGER VRVR3_TRG_GERENTE_ID
BEFORE INSERT ON VRVR3_GERENTE
FOR EACH ROW
BEGIN
    :NEW.idGerente := VRVR3_SEQ_GERENTE.NEXTVAL;
END;
/ 

CREATE OR REPLACE TRIGGER VRVR3_TRG_EMPREGADO_ID
BEFORE INSERT ON VRVR3_EMPREGADO
FOR EACH ROW
BEGIN
    :NEW.matricula := VRVR3_SEQ_EMPREGADO.NEXTVAL;
END;
/ 

CREATE OR REPLACE TRIGGER VRVR3_TRG_AREA_ID
BEFORE INSERT ON VRVR3_AREA
FOR EACH ROW
BEGIN
    :NEW.idArea := VRVR3_SEQ_AREA.NEXTVAL;
END;
/ 

CREATE OR REPLACE TRIGGER VRVR3_TRG_PRODUTO_ID
BEFORE INSERT ON VRVR3_PRODUTO
FOR EACH ROW
BEGIN
    :NEW.idProduto := VRVR3_SEQ_PRODUTO.NEXTVAL;
END;
/ 

CREATE OR REPLACE TRIGGER VRVR3_TRG_VENDA_ID
BEFORE INSERT ON VRVR3_VENDA
FOR EACH ROW
BEGIN
    :NEW.idVenda := VRVR3_SEQ_VENDA.NEXTVAL;
END;
/
*/