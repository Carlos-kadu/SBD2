-- -------- < aula1exer2_extra1 > --------
--
--                    SCRIPT DE CONSULTA (DML)
--
-- Data Criacao ...........: 04/11/2024
-- Autor(es) ..............: Larissa de Jesus Vieira, Carlos Eduardo Rodrigues
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 		   => 03 Perfis (role)
--         => 08 Usuários
-- 		   => 01 Visão
-- 
-- Ultimas Alteracoes
--    => Inclui os textos com enunciado de cada
--       solicitacao de consulltas.
--   18/11/2024 => Exclusão das consultas A, B, C e D e correção da consulta referente a demanda E;
-- ---------------------------------------------------------

USE aula1exer2evolucao3;
    
-- E) Solicitar ao usuário qualquer parte do nome de um produto e apresentar seu código, nome e quantidade de vendas em ordem 
-- alfabética do nome do produto de forma decrescente.
SELECT 
    p.idProduto AS codigo,
    p.nome,
    COUNT(DISTINCT c.idVenda) AS quantidadeDeVendas
FROM 
    PRODUTO p
LEFT JOIN 
    constitui c ON p.idProduto = c.idProduto
WHERE 
    p.nome LIKE '%en%'
GROUP BY 
    p.idProduto
ORDER BY 
    p.nome DESC;
