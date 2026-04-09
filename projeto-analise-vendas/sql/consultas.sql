
--CONSULTANDO A BASE


SELECT COUNT(*) AS total_registros
FROM vendas; --CONTANDO AS LINHAS DA TABELA

----------------------------------------------

SELECT DISTINCT produto 
FROM vendas;
--MOSTRANDO PRODUTOS UNICOS DA TABELA

----------------------------------------------

SELECT DISTINCT cidade
FROM vendas; --MOSTRANDO CIDADES UNICAS

--===============================================
--ANALISE DE VOLUMES

SELECT cidade, COUNT(*) as vendas_por_cidade
FROM vendas
GROUP BY cidade; -- QUANTIDADE DE VENDAS POR CIDADE

----------------------------------------------

SELECT categoria, COUNT(*) as vendas_por_categoria
FROM vendas
GROUP BY categoria; --QUANTIDADE DE VENDAS POR CATEGORIA

SELECT SUM(quantidade) AS quantidade_itens_vendidos
FROM vendas; --TOTAL DE ITENS VENDIDOS

--==============================================
--ANALISE DE VALOR

SELECT SUM(quantidade * preco_unitario) AS faturamento_total
FROM vendas; -- FATURAMENTO TOTAL


-------------------------------------------------

SELECT produto, SUM(quantidade * preco_unitario) AS faturamento_por_produto 
FROM vendas
GROUP BY produto
ORDER BY faturamento_por_produto DESC; --FATURAMENTO POR PRODUTO

--------------------------------------------------

SELECT cidade, SUM(quantidade * preco_unitario) AS faturamento_por_cidade
FROM vendas
GROUP BY cidade
ORDER BY faturamento_por_cidade DESC; --FATURAMENTO POR CIDADE

---------------------------------------------------

SELECT categoria, SUM(quantidade * preco_unitario) AS faturamento_por_categoria
FROM vendas
GROUP BY categoria
ORDER BY faturamento_por_categoria DESC; --FATURAMENTO POR CATEGORIA

----------------------------------------------------





