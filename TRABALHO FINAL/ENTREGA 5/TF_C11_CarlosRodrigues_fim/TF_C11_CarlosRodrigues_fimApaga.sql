-- ---------------------   < TF_C11  >   ---------------------
--
--                    SCRIPT APAGA (DDL)
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

USE us_election_2020;


DROP INDEX user_dimension_user_id_name_screen_name_followers_count_idx ON USER_DIMENSION;

DROP TABLE FACT_TWEET;
DROP TABLE SOURCE_DIMENSION;
DROP TABLE USER_DIMENSION;
DROP TABLE LOCATION_DIMENSION;
DROP TABLE STATE_DIMENSION;

DROP VIEW TOP_NEWSPAPER_PROFILES;
DROP VIEW TWEETS_BY_STATE;
