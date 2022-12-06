-- SELECIONAR TUDO DAS TABELAS
select * from cliente
select * from funcionario
select * from produto

-- SELECIONAR COLUNAS DAS TABELAS
select codigo, nome, fone from cliente
select codigo, nome, estcivil, datanasc from funcionario
select codigo, nome, custo, venda from produto

-- SELECIONAR POR QUANTIDADES DE LINHAS
select top 20 codigo, nome, fone from cliente

-- SELECIONAR POR PERCENTUAL
select top 10 percent codigo, nome, custo, venda from produto

-- EXIBINDO STRINGS COMO RESULTADO
select codigo, nome, fone, 'N�o Classificado' from cliente
select codigo, nome, custo, venda, 'N�m. Refer�ncia' from produto

-- ALTERANDO TITULOS DAS COLUNAS
select codigo, nome, fone, 'N�o Classificado' as 'Classifica��o' from cliente
select codigo, nome, custo, venda, 'N�m. Refer�ncia' as 'N�mero de refer�ncia' from produto

-- ELIMINANDO DUPLICA��O DE LINHAS
select distinct cliente from pedido
select distinct bairro, cidade from funcionario
select distinct tipo from produto

-- EXIBINDO COLUNAS CALCULADAS
select codigo, quantest, venda, quantest*venda as 'Valor Total' from produto
select codigo, nome, salario, salario*1.32 as 'Salario com aumento' from funcionario
