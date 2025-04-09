-- -------- < aula1exer2Evolucao5_Oracle > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo, Larissa de Jesus Vieira, Pedro Henrique Rodrigues de Carvalho, Carlos Eduardo Rodrigues
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 01 Visão
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
CREATE SEQUENCE CER_SEQ_GERENTE
  START WITH 10000 INCREMENT BY 1;

CREATE SEQUENCE CER_SEQ_EMPREGADO
  START WITH 1000000000 INCREMENT BY 1;

CREATE SEQUENCE CER_SEQ_AREA
  START WITH 100 INCREMENT BY 1;

CREATE SEQUENCE CER_SEQ_PRODUTO
  START WITH 100000 INCREMENT BY 1;

CREATE SEQUENCE CER_SEQ_VENDA
  START WITH 100000 INCREMENT BY 1;


-- TABELAS
CREATE TABLE CER_PESSOA (
    cpf VARCHAR2(11) NOT NULL,
    senha VARCHAR2(8) NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT CER_PESSOA_PK PRIMARY KEY (cpf)
);


CREATE TABLE CER_GERENTE (
    idGerente NUMBER(5)  DEFAULT CER_SEQ_GERENTE.nextval NOT NULL,
    email VARCHAR2(255) NOT NULL,
    formacao VARCHAR2(255) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT CER_GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT CER_GERENTE_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES CER_PESSOA(cpf)
);


CREATE TABLE CER_EMPREGADO (
    matricula NUMBER(10) DEFAULT CER_SEQ_EMPREGADO.nextval NOT NULL,
    cep VARCHAR2(8) NOT NULL,
    numero NUMBER(6) NOT NULL,
    complemento VARCHAR2(255),
    bairro VARCHAR2(255) NOT NULL,
    cidade VARCHAR2(255) NOT NULL,
    estado CHAR(2) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    CONSTRAINT CER_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT CER_EMPREGADO_PESSOA_FK FOREIGN KEY (cpf)
        REFERENCES CER_PESSOA(cpf)
);


CREATE TABLE CER_AREA (
    idArea NUMBER(3) DEFAULT CER_SEQ_AREA.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    CONSTRAINT CER_AREA_PK PRIMARY KEY (idArea)
);


CREATE TABLE CER_PRODUTO (
    idProduto NUMBER(6) DEFAULT CER_SEQ_PRODUTO.nextval NOT NULL,
    nome VARCHAR2(255) NOT NULL,
    valorUnitario NUMBER(10, 2) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT CER_PRODUTO_PK PRIMARY KEY (idProduto),
    CONSTRAINT CER_PRODUTO_AREA_FK FOREIGN KEY (idArea)
        REFERENCES CER_AREA(idArea)
);


CREATE TABLE CER_VENDA (
    idVenda NUMBER(6) DEFAULT  CER_SEQ_VENDA.nextval NOT NULL,
    dataVenda DATE NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT CER_VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT CER_VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES CER_EMPREGADO(matricula)
);


CREATE TABLE CER_TELEFONE (
    telefone VARCHAR2(11) NOT NULL,
    matricula NUMBER(10) NOT NULL,
    CONSTRAINT CER_TELEFONE_UK UNIQUE (telefone, matricula),
    CONSTRAINT CER_TELEFONE_EMPREGADO_FK FOREIGN KEY (matricula)
        REFERENCES CER_EMPREGADO(matricula)
        ON DELETE CASCADE
);


CREATE TABLE CER_GERENCIA (
    idGerente NUMBER(5) NOT NULL,
    idArea NUMBER(3) NOT NULL,
    CONSTRAINT CER_GERENCIA_GERENTE_FK FOREIGN KEY (idGerente)
        REFERENCES CER_GERENTE(idGerente),
    CONSTRAINT CER_GERENCIA_AREA_FK FOREIGN KEY (idArea)
        REFERENCES CER_AREA(idArea)
);


CREATE TABLE CER_CONSTITUI (
    idProduto NUMBER(6) NOT NULL,
    idVenda NUMBER(6) NOT NULL,
    quantidade NUMBER(5) NOT NULL,
    CONSTRAINT CER_CONSTITUI_UK UNIQUE (idProduto, idVenda),
    CONSTRAINT CER_CONSTITUI_PRODUTO_FK FOREIGN KEY (idProduto)
        REFERENCES CER_PRODUTO(idProduto),
    CONSTRAINT CER_CONSTITUI_VENDA_FK FOREIGN KEY (idVenda)
        REFERENCES CER_VENDA(idVenda)
);