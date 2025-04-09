-- Nome e matrícula: Carlos Eduardo Rodrigues - 221031265

-- Nome da Base de Dados => metacritic

-- Quantidades de Tabelas nesta Base de Dados => 3

-- Quantidades de Tuplas em CADA TABELA dessa Base de Dados => | TABELA    | TUPLAS  |
-- 															   | GAME      | 12043	 |
-- 															   | GENRE     | 12  	 |
-- 															   | PUBLISHER | 1696	 |
-- Tabela GAME ficou com 12044 tuplas após o insert.


-- 1) Restaurar o backup do arquivo que está na Área de Compartilhamento (pasta /aulas/basesDados e arquivo projetoBaseDados_Jogos_2020.zip):

=> mysql -u root -p metacritic < SqlDump_baseDados_Jogos.sql

-- 2) Inserir na tabela GAME somente mais 1 tupla nova com o novo jogo sendo War Thunder com os demais dados somente OBRIGATÓRIOS sendo preenchidos com dados fictícios nesta tabela, mas respeitando as possíveis regras de negócio existentes e com o gênero devendo ser informado como de COMBATE (fighting):

=> INSERT INTO GAME (name, id_publisher, platform, na_sales, eu_sales, jp_sales, other_sales, year_of_release) 
VALUES ('War Thunder', 4616, 'PC', 1.2, 0.8, 0.3, 0.1, 2012);

-- 3) Comando que faz um novo backup desta base de dados contendo uma nova tupla incluída pela instrução anterior (questão 2):

=> mysqldump -u root -p metacritic > SqlDump_baseDados_Jogos.sql


