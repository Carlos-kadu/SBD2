-- ---------------------   < aula9exer1 >   ---------------------
--
--                    SCRIPT DE CONSULTA (DML)
-- 
-- Data Criacao ...........: 27/1/2025
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- 
-- Banco de Dados .........: MySQL 8.0.36
-- Banco de Dados(nome) ...: metacritic
-- 
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
-- -----------------------------------------------------------------

-- CONSULTA A:
-- Identificar os gêneros de jogos com maior contribuição em vendas por região (América do Norte, Europa, Japão e demais localidades) 
-- para priorizar investimentos e ações de marketing regionais.

SELECT 
    g.description AS genero,
    SUM(game.na_sales) AS vendas_na,
    SUM(game.eu_sales) AS vendas_eu,
    SUM(game.jp_sales) AS vendas_jp,
    SUM(game.other_sales) AS vendas_em_outros_lugares,
    SUM(game.na_sales + game.eu_sales + game.jp_sales + game.other_sales) AS vendas_totais
FROM
    GAME game
        JOIN
    GENRE g ON game.id_genre = g.id_genre
GROUP BY g.description
ORDER BY vendas_totais DESC;


-- CONSULTA B:
-- Analisar o desempenho dos publicadores, com base no total de vendas globais a partir de 2010, 
-- para identificar parceiros estratégicos para futuros lançamentos e negociações.
SELECT 
    p.publisher_name AS publicador,
    COUNT(game.id_game) AS total_jogos,
    SUM(game.na_sales + game.eu_sales + game.jp_sales + game.other_sales) AS vendas_globais
FROM
    GAME game
        JOIN
    PUBLISHER p ON game.id_publisher = p.id_publisher
WHERE
    game.year_of_release >= 2010
GROUP BY p.publisher_name
ORDER BY vendas_globais DESC;
