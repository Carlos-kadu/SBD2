-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão, Danilo César Tertuliano Melo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
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
-- ---------------------------------------------------------

-- BASE DE DADOS
-- BASE DE DADOS

-- ------------------------------------------------
-- Correção no nome da base de dados.
-- AUTO INCREMENT
-- APAGAR OS USUÁRIOS E PERFIS
-- Correção no script controle criando os perfis e o usuário corretamente. 
-- Não usar o localhost @'localhost' -> Só pode se conectar usando o console do servidor bd








-- ------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2;

USE aula1exer2;

-- TABELAS
CREATE TABLE PESSOA (
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(255),
    nome VARCHAR(255),
    matricula VARCHAR(255),
    cep VARCHAR(8),
    numero VARCHAR(255),
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2),
    email VARCHAR(255),
    formacao VARCHAR(255),
    PESSOA_TIPO INT,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE=InnoDB;

CREATE TABLE telefone (
    telefone_PK INT NOT NULL,
    telefone BIGINT,
    CONSTRAINT TELEFONE_UK UNIQUE (telefone),
    CONSTRAINT TELEFONE_PK PRIMARY KEY (telefone_PK)
) ENGINE=InnoDB;

CREATE TABLE AREA (
    idArea INT NOT NULL,
    nome VARCHAR(255),
    CONSTRAINT AREA_PK PRIMARY KEY (idArea)
) ENGINE=InnoDB;

CREATE TABLE gerencia (
    fk_PESSOA_cpf VARCHAR(11) NOT NULL,
    fk_AREA_idArea INT NOT NULL,
    CONSTRAINT GERENCIA_PK PRIMARY KEY (fk_PESSOA_cpf, fk_AREA_idArea),
    CONSTRAINT GERENCIA_PESSOA_FK FOREIGN KEY (fk_PESSOA_cpf) REFERENCES PESSOA(cpf) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT GERENCIA_AREA_FK FOREIGN KEY (fk_AREA_idArea) REFERENCES AREA(idArea) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE inserido (
    fk_PESSOA_cpf VARCHAR(11) NOT NULL,
    fk_AREA_idArea INT NOT NULL,
    CONSTRAINT INSERIDO_PK PRIMARY KEY (fk_PESSOA_cpf, fk_AREA_idArea),
    CONSTRAINT INSERIDO_PESSOA_FK FOREIGN KEY (fk_PESSOA_cpf) REFERENCES PESSOA(cpf) ON DELETE CASCADE ON UPDATE RESTRICT,
    CONSTRAINT INSERIDO_AREA_FK FOREIGN KEY (fk_AREA_idArea) REFERENCES AREA(idArea) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE VENDA (
    idVenda INT NOT NULL,
    createdAt DATE,
    FK_PESSOA_cpf VARCHAR(11),
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_PESSOA_FK FOREIGN KEY (FK_PESSOA_cpf) REFERENCES PESSOA(cpf) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB;

CREATE TABLE PRODUTO (
    idProduto INT NOT NULL,
    nome VARCHAR(255),
    valor DECIMAL(10,2),
    CONSTRAINT PRODUTO_PK PRIMARY KEY (idProduto)
) ENGINE=InnoDB;

CREATE TABLE vendas_constitui (
    valor DECIMAL(10,2),
    quantidade INT,
    valorTotal_derrivado DECIMAL(10,2) GENERATED ALWAYS AS (valor * quantidade) STORED,
    fk_PRODUTO_idProduto INT NOT NULL,
    fk_VENDA_idVenda INT NOT NULL,
    CONSTRAINT VENDAS_CONSTITUI_PK PRIMARY KEY (fk_VENDA_idVenda, fk_PRODUTO_idProduto),
    CONSTRAINT VENDAS_CONSTITUI_PRODUTO_FK FOREIGN KEY (fk_PRODUTO_idProduto) REFERENCES PRODUTO(idProduto),
    CONSTRAINT VENDAS_CONSTITUI_VENDA_FK FOREIGN KEY (fk_VENDA_idVenda) REFERENCES VENDA(idVenda)
) ENGINE=InnoDB;

