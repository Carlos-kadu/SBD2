-- -------- < aula1exer2Evolucao5_Oracle > --------
--
--                    SCRIPT DE CONSULTAS (DML)
--
-- Data Criacao ...........: 25/11/2024
-- Autor(es) ..............: Carlos Eduardo Rodrigues
-- Banco de Dados .........: Oracle
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 01 Visão
-- ---------------------------------------------------------

-- A) Consultar todas as vendas feitas por um empregado específico que será definido 
-- pelo usuário através da chave primária do empregado nessa pesquisa (usuário definirá um empregado específico na consulta);
SELECT idVenda FROM CER_VENDA WHERE matricula = 1000000000;

-- B) Relacionar todos os dados de uma venda específica com todas as informações dos produtos comercializados por esta 
-- venda e mostrar o preço total por item da venda (usuário definirá uma venda específica na consulta);
SELECT v.idVenda, v.dataVenda, v.matricula AS matriculaFuncionario, p.nome AS produto, p.valorUnitario, c.quantidade, (p.valorUnitario * c.quantidade) AS valorTotalItem FROM CER_VENDA v JOIN CER_CONSTITUI c ON v.idVenda = c.idVenda JOIN CER_PRODUTO p ON c.idProduto = p.idProduto WHERE v.idVenda = 100000;

-- C) Mostrar todos os empregados da empresa que NÃO sejam gerentes em ordem alfabética crescente do nome do empregado;
SELECT e.matricula, p.nome FROM CER_EMPREGADO e JOIN CER_PESSOA p ON e.cpf = p.cpf WHERE e.cpf NOT IN (SELECT cpf FROM CER_GERENTE) ORDER BY p.nome;

-- D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa (lembrar que só o código do produto NÃO 
-- identifica qual produto é para vários funcionários ou usuários finais da empresa, então reflita de quais atributos deverão ser 
-- apresentados e em qual sequência (ordenação) para atender o interesse do usuário final em suas atividades diárias com melhor qualidade 
-- e eficiência). 
-- Esta consulta deverá ser implementada como uma VIEW (visão em SQL) e logo abaixo da VIEW deverá existir o SELECT que aciona esta VIEW;
CREATE OR REPLACE VIEW CER_QUANTIDADE_VENDAS AS
SELECT p.idProduto, 
       p.nome AS nomeProduto, 
       SUM(c.quantidade) AS quantidadeVendida 
FROM CER_CONSTITUI c
JOIN CER_PRODUTO p ON c.idProduto = p.idProduto
GROUP BY p.idProduto, p.nome
ORDER BY quantidadeVendida;

SELECT * 
FROM CER_QUANTIDADE_VENDAS;

-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu código, 
-- nome e quantidade de vendas em ordem alfabética do nome do produto de forma decrescente.
SELECT p.idProduto, p.nome, COUNT(c.idVenda) AS quantidadeDeVendas FROM CER_PRODUTO p LEFT JOIN CER_CONSTITUI c ON p.idProduto = c.idProduto WHERE p.nome LIKE '%Boneco%' GROUP BY p.idProduto, p.nome ORDER BY p.nome DESC;
