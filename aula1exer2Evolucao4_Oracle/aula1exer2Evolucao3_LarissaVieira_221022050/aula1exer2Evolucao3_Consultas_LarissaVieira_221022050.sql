-- -------- < aula1exer2 - Evolução 3 > --------
--
--                    SCRIPT DE CONSULTA
--
-- Data Criacao ...........: 16/11/2024
-- Autor(es) ..............: Larissa de Jesus Vieira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 01 Visao
-- 		   => 03 Perfis (role)
--         => 08 Usuários
-- 
-- Ultimas Alteracoes
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula1exer2evolucao3;

/*A) Consultar todas as vendas feitas por um empregado específico que será definido 
pelo usuário através da chave primária do empregado nessa pesquisa (usuário definirá 
um empregado específico na consulta)*/
SELECT idVenda
	FROM VENDA
	WHERE matricula = 1000000000;

/*B) Relacionar TODOS os dados de uma venda específica com TODAS as informações dos 
produtos comercializados por esta venda e mostrar o preço total por item da venda (usuário 
definirá uma venda específica na consulta)*/
SELECT v.idVenda, v.dataVenda, v.matricula AS matriculaFuncionario, p.nome AS produto, p.valorUnitario, c.quantidade, (p.valorUnitario*c.quantidade) AS valorTotalItem
	FROM VENDA v 
		JOIN constitui c ON v.idVenda = c.idVenda 
		JOIN PRODUTO p ON c.idProduto = p.idProduto 
	WHERE v.idVenda = 100000;

/*C) Mostrar todos os empregados da empresa que NÃO sejam gerentes em ordem alfabética 
crescente do nome do empregado*/
SELECT e.matricula, p.nome
	FROM EMPREGADO e 
		JOIN PESSOA p ON e.cpf = p.cpf
	WHERE e.cpf NOT IN (SELECT cpf FROM GERENTE)
	ORDER BY p.nome;

/*D) Consultar e mostrar a quantidade de CADA produto que foi vendido por esta empresa 
(lembrar que só o código do produto NÃO identifica qual produto é para vários funcionários 
ou usuários finais da empresa, então reflita de quais atributos deverão ser apresentados 
e em qual sequência (ordenação) para atender o interesse do usuário final em suas atividades 
diárias com melhor qualidade e eficiência). Esta consulta deverá ser implementada como 
uma VIEW (visão em SQL)*/
CREATE VIEW QUANTIDADE_VENDAS(idProduto, nomeProduto, quantidadeVendida) AS
	SELECT p.idProduto, p.nome, SUM(c.quantidade) AS quantidadeVendida
		FROM constitui c 
			JOIN PRODUTO p ON p.idProduto = c.idProduto
		GROUP BY p.idProduto, p.nome
		ORDER BY quantidadeVendida;
        
-- Visualizando view QUANTIDADE_VENDAS
SELECT * FROM QUANTIDADE_VENDAS;
    
/*E)Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu código, 
nome e QUANTIDADE DE VENDAS em ordem alfabética do nome do produto de forma decrescente.*/
SELECT p.idProduto, p.nome, COUNT(c.idVenda) AS quantidadeDeVendas
	FROM PRODUTO p
		LEFT JOIN constitui c ON p.idProduto = c.idProduto
	WHERE p.nome LIKE ('%')
	GROUP BY p.idProduto
	ORDER BY p.nome DESC;






