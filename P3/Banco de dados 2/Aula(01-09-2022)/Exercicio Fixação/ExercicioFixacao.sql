-- EXERCICIO FIXA��O
-- Quest�o 01:
select codigo, nome as 'Produto', quantest as 'Estoque Real', estmin as 'Estoque M�nimo', 'N�m. Ref.' as 'Refer�ncia' from produto

-- Quest�o 02:
select *, venda-custo as 'Lucro' from produto

-- Quest�o 03:
select *, 1.25*venda as 'Pre�o Reajustado' from produto

-- Quest�o 04:
select distinct cidade from funcionario