-- ---------------------   < TF_C11  >   ---------------------
--
--                    SCRIPT DE CONSULTAS (DML)
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

-- A view TOP_NEWSPAPER_PROFILES retorna os 20 perfis jornalísticos com maior engajamento, medido pela soma de curtidas e retweets. Para cada perfil, 
-- são retornados o nome do perfil, o nome de usuário, o número de seguidores, o total de curtidas recebidas, o total de retweets
-- e o engajamento total, que é a soma de curtidas e retweets. 
-- A lista é ordenada em ordem decrescente de engajamento, destacando os perfis mais engajados.

CREATE VIEW TOP_NEWSPAPER_PROFILES AS
    SELECT 
        ud.name,
        ud.screen_name,
        ud.followers_count,
        SUM(ft.likes) AS total_Likes,
        SUM(ft.retweet_count) AS total_Retweets,
        (SUM(ft.likes) + SUM(ft.retweet_count)) AS engajamento_Total
    FROM
        FACT_TWEET ft
            JOIN
        USER_DIMENSION ud ON ft.user_id = ud.user_id
    WHERE
        ud.name REGEXP 'News|Times|Post|CNN|BBC|Reuters|Guardian|NYT|WSJ|Washington|Al Jazeera|Forbes|Bloomberg|ABC'
    GROUP BY ud.user_id , ud.name , ud.screen_name , ud.followers_count
    ORDER BY engajamento_Total DESC
    LIMIT 20;


-- A view TWEETS_BY_STATE fornece uma visão agregada do número de tweets registrados em cada
-- estado de todos os paises ao redor do mundo.
CREATE VIEW TWEETS_BY_STATE AS
    SELECT 
        ld.state_name, COUNT(*) AS tweet_count
    FROM
        FACT_TWEET ft
            JOIN
        LOCATION_DIMENSION ld ON ft.latitude = ld.latitude
            AND ft.longitude = ld.longitude
    GROUP BY ld.state_name
    ORDER BY tweet_count DESC;
