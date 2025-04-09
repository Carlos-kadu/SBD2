-- ---------------------   < TF_C11  >   ---------------------
--
--                    SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 16/02/2025
-- Autor(es) ..............: Artur Handow Krauspenhar 
-- 							 Carlos Eduardo Rodrigues
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: us_election_2020
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 02 Views
--         => 01 Index
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS us_election_2020;

USE us_election_2020;

CREATE TABLE STATE_DIMENSION (
    state_code VARCHAR(5) NOT NULL,
    state_name VARCHAR(255) NOT NULL,
    
    CONSTRAINT STATE_DIMENSION_PK PRIMARY KEY (state_code , state_name)
)  ENGINE=INNODB;

CREATE TABLE LOCATION_DIMENSION (
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    city TINYTEXT NOT NULL,
    country TINYTEXT NOT NULL,
    continent VARCHAR(255) NOT NULL,
    state_code VARCHAR(5) NOT NULL,
    state_name VARCHAR(255) NOT NULL,
    
    CONSTRAINT LOCATION_DIMENSION_PK PRIMARY KEY (latitude , longitude),
    CONSTRAINT LOCATION_DIMENSION_STATE_DIMENSION_FK FOREIGN KEY (state_code , state_name)
        REFERENCES STATE_DIMENSION (state_code , state_name)
)  ENGINE=INNODB;

CREATE TABLE USER_DIMENSION (
    user_id BIGINT(11) NOT NULL,
    name VARCHAR(200) NOT NULL,
    screen_name VARCHAR(200) NOT NULL,
    description VARCHAR(300) NOT NULL,
    followers_count INT(4) NOT NULL,
    location TINYTEXT NOT NULL,
    
    CONSTRAINT USER_DIMENSION_PK PRIMARY KEY (user_id)
)  ENGINE=INNODB;

CREATE TABLE SOURCE_DIMENSION (
    source_id INT(4) AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    
    CONSTRAINT SOURCE_DIMENSION_PK PRIMARY KEY (source_id)
)  ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE FACT_TWEET (
    tweet_id BIGINT(11) NOT NULL,
    created_at DATETIME NOT NULL,
    message VARCHAR(1000) NOT NULL,
    likes INT(4) NOT NULL,
    retweet_count INT(4) NOT NULL,
    source_id INT(4) NOT NULL,
    user_id BIGINT(11) NOT NULL,
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    collected_at DATETIME,
    
    CONSTRAINT FACT_TWEET_PK PRIMARY KEY (tweet_id),
    CONSTRAINT FACT_TWEET_USER_DIMENSION_FK FOREIGN KEY (user_id)
        REFERENCES USER_DIMENSION (user_id),
    CONSTRAINT FACT_TWEET_SOURCE_DIMENSION_FK FOREIGN KEY (source_id)
        REFERENCES SOURCE_DIMENSION (source_id),
    CONSTRAINT FACT_TWEET_LOCATION_DIMENSION_FK FOREIGN KEY (latitude , longitude)
        REFERENCES LOCATION_DIMENSION (latitude , longitude)
)  ENGINE=INNODB;

CREATE INDEX user_dimension_user_id_name_screen_name_followers_count_idx ON USER_DIMENSION(user_id, name, screen_name, followers_count);