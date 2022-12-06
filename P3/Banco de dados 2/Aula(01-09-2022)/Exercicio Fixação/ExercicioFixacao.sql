-- EXERCICIO FIXAÇÃO
-- Questão 01:
select codigo, nome as 'Produto', quantest as 'Estoque Real', estmin as 'Estoque Mínimo', 'Núm. Ref.' as 'Referência' from produto

-- Questão 02:
select *, venda-custo as 'Lucro' from produto

-- Questão 03:
select *, 1.25*venda as 'Preço Reajustado' from produto

-- Questão 04:
select distinct cidade from funcionario