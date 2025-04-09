-- -------- < aula1exer2 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/10/2024
-- Autor(es) ..............: Lucas Lopes Frazão
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
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
  IF NOT EXISTS aula1exer2;

USE aula1exer2;

-- TABELAS
CREATE TABLE PESSOA (
    cpf VARCHAR(11) NOT NULL,
    senha VARCHAR(255),
    nome VARCHAR(255),
   CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
) ENGINE=InnoDB;


CREATE TABLE GERENTE (
    email VARCHAR(255) UNIQUE,
    formacao VARCHAR(255),
    cpfPessoa VARCHAR(11),
    CONSTRAINT GERENTE_PK PRIMARY KEY (cpfPessoa),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpfPessoa)
      REFERENCES PESSOA(cpf)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;


CREATE TABLE telefone (
    idTelefone INT NOT NULL,
    telefone BIGINT UNIQUE,
    CONSTRAINT TELEFONE_PK PRIMARY KEY (idTelefone)
) ENGINE=InnoDB;


CREATE TABLE EMPREGADO (
    matricula VARCHAR(255) UNIQUE,
    cep VARCHAR(8),
    numero VARCHAR(255),
    complemento VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2),
    idTelefone INT,
    cpfPessoa VARCHAR(11),
   CONSTRAINT EMPREGADO_PK PRIMARY KEY (cpfPessoa),
   CONSTRAINT EMPREGADO_TELEFONE_FK FOREIGN KEY (idTelefone)
     REFERENCES telefone(idTelefone)
       ON DELETE NO ACTION
       ON UPDATE RESTRICT,
   CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpfPessoa)
     REFERENCES PESSOA(cpf)
       ON DELETE CASCADE
	   ON UPDATE RESTRICT
) ENGINE=InnoDB;


CREATE TABLE gerencia (
    cpfGerente VARCHAR(11),
    cpfEmpregado VARCHAR(11),
    PRIMARY KEY (cpfGerente, cpfEmpregado),
    CONSTRAINT GERENCIA_GERENTE_FK FOREIGN KEY (cpfGerente)
      REFERENCES GERENTE(cpfPessoa),
    CONSTRAINT GERENCIA_EMPREGADO_FK FOREIGN KEY (cpfEmpregado)
      REFERENCES EMPREGADO(cpfPessoa)
) ENGINE=InnoDB;


CREATE TABLE VENDA (
    idVenda INT PRIMARY KEY,
    createdAt DATE,
    idEmpregado VARCHAR(11),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (idEmpregado)
      REFERENCES EMPREGADO(cpfPessoa)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;


CREATE TABLE PRODUTO (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(10,2)
) ENGINE=InnoDB;


CREATE TABLE VENDAS (
    valor DECIMAL(10,2),
    quantidade INT,
    valorTotal DECIMAL(10,2) GENERATED ALWAYS AS (valor * quantidade) STORED,
    idProduto INT,
    idVenda INT,
    PRIMARY KEY (idVenda, idProduto),
    CONSTRAINT VENDAS_PRODUTO_FK FOREIGN KEY (idProduto)
      REFERENCES PRODUTO(idProduto),
    CONSTRAINT VENDAS_VENDA FOREIGN KEY (idVenda)
      REFERENCES VENDA(idVenda)
) ENGINE=InnoDB;
