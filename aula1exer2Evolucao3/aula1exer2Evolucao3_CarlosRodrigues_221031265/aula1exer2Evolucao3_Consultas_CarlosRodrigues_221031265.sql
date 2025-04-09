-- ---------------------   < aula1exer2evolucao3 >   ---------------------
--
--                    SCRIPT DE CONSULTA (DML)
-- 
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
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
-- -----------------------------------------------------------------

use aula1exer2evolucao3;

-- A) Consultar todas as vendas feitas por um empregado específico que será definido pelo usuário através da chave 
-- primária do empregado nessa pesquisa (usuário definirá um empregado específico na consulta);
SELECT * from VENDA 
  WHERE matricula = 1;



-- B) Relacionar todos os dados de uma venda específica com todas as informações dos produtos comercializados por esta venda 
-- e mostrar o preço total por item da venda (usuário definirá uma venda específica na consulta);
SELECT 
    V.idVenda,
    V.dtVenda,
    P.idProduto,
    P.nome AS nomeProduto,
    C.quantidade,
    P.precoUnitario,
    (C.quantidade * P.precoUnitario) AS precoTotalPorItem
FROM VENDA V
JOIN contem C ON V.idVenda = C.idVenda
JOIN PRODUTO P ON C.idProduto = P.idProduto
WHERE V.idVenda = 1;



-- C) Mostrar todos os empregados da empresa que NÃO sejam gerentes em ordem alfabética crescente do nome do empregado;
SELECT 
    E.matricula, P.nome
FROM
    EMPREGADO E
        JOIN
    PESSOA P ON E.cpf = P.cpf
        LEFT JOIN
    GERENTE G ON P.cpf = G.cpf
WHERE
    G.cpf IS NULL
ORDER BY P.nome ASC;



-- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa (lembrar que só o código do produto NÃO identifica 
-- qual produto é para vários funcionários ou usuários finais da empresa, então reflita de quais atributos deverão ser apresentados e 
-- em qual sequência (ordenação) para atender o interesse do usuário final em suas atividades diárias com melhor qualidade e eficiência). 
-- Esta consulta deverá ser implementada como uma VIEW (visão em SQL);
CREATE VIEW Quantidade_Produtos_Vendidos AS
    SELECT 
        p.idProduto, p.nome, SUM(c.quantidade) AS quantidade_vendida
    FROM
        PRODUTO AS p
            JOIN
        contem AS c ON p.idProduto = c.idProduto
    GROUP BY p.idProduto , p.nome
    ORDER BY p.nome ASC;

-- SELECT * FROM Quantidade_Produtos_Vendidos;


-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu código, nome e quantidade de vendas em ordem 
-- alfabética do nome do produto de forma decrescente.
SELECT 
    p.idProduto, p.nome, SUM(c.quantidade) AS quantidade_vendida
FROM
    PRODUTO p
        JOIN
    contem c ON p.idProduto = c.idProduto
WHERE
    p.nome LIKE CONCAT('%', 'Arroz', '%')
GROUP BY p.idProduto , p.nome
ORDER BY p.nome DESC;


