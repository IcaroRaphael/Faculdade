/*1. Exibir c�digo, nome com o cabe�alho "Produto", quantidade em estoque com o cabe�alho "Estoque Real", estoque
m�nimo com o cabe�alho "Estoque M�nimo" e uma coluna contendo "Num. Ref." com o cabe�alho "Refer�ncia" para
todos os produtos.*/
select codigo, nome as 'Produto', quantest as 'Estoque Real', estmin as 'Estoque Minimo', 'Num. Ref.' as 'Refer�ncia' from dbo.produto

/*2. Exibir uma coluna adicional na tabela produto informando a diferen�a entre o pre�o de venda e o pre�o de custo. D�
um nome a esta coluna.*/
select *, (venda - custo) as 'Lucro' from dbo.produto

/*3. Exibir uma coluna adicional na tabela produto informando um aumento de 25% sobre o pre�o de venda de todos os
produtos. D� um nome a esta coluna.*/
select *, (venda * 1.25) as 'Preco atualizado' from dbo.produto

/*4. Exibir o c�digo das cidades dos funcion�rios sem haver repeti��o de linhas.*/
select distinct cidade from dbo.funcionario

/*5. Exibir c�digo, nome, tipo, pre�o de custo e pre�o de venda de todos os produtos ordenados pelo nome em ordem
ascendente.*/
select codigo, nome, tipo, custo, venda from dbo.produto order by nome

/*6. Exibir todos os dados dos funcion�rios do sexo masculino, ordenados pela data de nascimento em ordem
descendente.*/
select * from dbo.funcionario where sexo = 'M' order by datanasc desc

/*7. Exibir o nome, o setor e o c�digo da cidade dos funcion�rios que nasceram nas cidades com c�digo 7, 8 e 15,
ordenados pelo setor e nome do funcion�rio.*/
select nome, setor, natural from dbo.funcionario where natural in (7, 8, 15) order by setor, nome

/*8. Exibir o c�digo e o nome das cidades que n�o s�o brasileiras, ordenadas pelo c�digo em ordem ascendente.*/
select codigo, nome from dbo.cidade where pais != 'BRA' order by codigo

/*9. Exibir os dados dos funcion�rios do sexo feminino com uma coluna contendo um aumento de sal�rio de 52%. D�
um nome a esta coluna.*/
select *, (salario * 1.52) as 'Novo salario' from dbo.funcionario where sexo = 'F'

/*10. Exibir todos os funcion�rios com sal�rio entre R$ 1.000,00 e R$ 3.000,00.*/
select * from dbo.funcionario where salario between 1000 and 3000

/*11. Exibir todos os produtos com pre�o de custo entre R$ 20,00 e R$ 100,00, ordenados pelo c�digo.*/
select * from dbo.produto where custo between 20 and 100 order by codigo

/*12. Exibir todos os funcion�rios com n�mero de telefone desconhecido.*/
select * from dbo.funcionario where fone is null

/*13. Exibir todos os produtos que estejam com o estoque real abaixo do estoque m�nimo.*/
select * from dbo.produto where quantest < estmin

/*14. Exibir todos os produtos cujo tipo n�o seja 1, 2 ou 3 e o pre�o de venda esteja entre R$10,00 e R$ 50,00.*/
select * from dbo.produto where (tipo not in (1, 2, 3)) and (venda between 10 and 50)

/*15. Exibir todos os funcion�rios que t�m e-mail.*/
select * from dbo.funcionario where email is not null

/*16. Exibir todos os funcion�rios que nasceram entre 01/12/65 e 31/03/66 ordenados pelo nome em ordem
ascendente.*/
select * from dbo.funcionario where datanasc between '01/12/65' and '31/03/66' order by nome

/*17. Exibir a idade de todos os funcion�rios da empresa, ordenados pela idade e nome em ordem ascendente.*/
select (year(getdate()) - year(datanasc)) as 'idade' from dbo.funcionario order by idade, nome

/*18. Exibir o c�digo dos clientes que j� fizeram pedido na empresa.*/
select distinct cliente from dbo.pedido

/*19. Exibir todos os dados dos funcion�rios homens, casados e com sal�rio menor ou igual a R$
3.000,00, ordenados pelo nome em ordem ascendente.*/
select * from dbo.funcionario where (sexo = 'M') and (estcivil = 'C') and (salario <= 3000) order by nome

/*20. Exibir c�digo, nome, tipo e pre�o de venda dos produtos com pre�o de venda menor ou igual a R$ 50,00 e tipo
diferente de 1 ou 3, ordenados pelo nome em ordem descendente.*/
select codigo, nome, tipo, venda from dbo.produto where (venda <= 50) and (tipo not in (1, 3)) order by nome desc

/*21. Exibir os funcion�rios que nasceram entre 01/01/65 e 31/12/66 na cidade cujo c�digo n�o seja 4, 6 ou 10, ordenados
pelo nome em ordem ascendente.*/
select * from dbo.funcionario where datanasc between '01/01/65' and '31/12/66' and cidade not in (4, 6, 10) order by nome

/*22. Exibir o nome e o pre�o de venda dos produtos cuja descri��o contenha a palavra "chocolate" com pre�o de venda
maior ou igual a R$ 15,00, ordenados pelo pre�o de venda em ordem descendente.*/
select nome, venda from dbo.produto where (descricao like '%chocolate%' or descricao like 'chocolate%' or descricao like '%chocolate') and (venda >= 15) order by venda desc

/*23. Exibir o c�digo e o nome dos funcion�rios homens, exceto aqueles cujos nomes iniciam pela letra A ou M,
ordenados pelo nome em ordem ascendente.*/
select codigo, nome from dbo.funcionario where (sexo = 'M') and (nome not like 'A%' and nome not like 'M%') order by nome

/*24. Exibir todos os pedidos atendidos por via a�rea, com valor do frete maior ou igual a R$ 300,00, ordenados pelo
c�digo em ordem ascendente.*/
select * from dbo.pedido where (via = 'A') and (frete >= 300) order by codigo