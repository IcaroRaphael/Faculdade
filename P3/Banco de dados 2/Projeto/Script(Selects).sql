--1 cliente que mais gastou
select a.codigo, a.nome, sum(b.valorTotal) as GastoCliente
from cliente as a join Venda as b 
on a.codigo = b.cliente 
group by a.codigo, a.nome order by GastoCliente desc


--2 produto mais vendido
select a.nome, a.nome, a.categoria, a.precoVenda, b.quantProduto 
from Produto as a join ItensVendidos as b
on a.codigo = b.produto 
order by b.quantProduto desc

--3 mostra os funcionarios com seus respectivos setores 
select a.codigo, a.nome, a.funcao, b.nome 
from Funcionario as a  left join Setor as b 
on a.setor = b.codigo


--4 mostra o(s) setor(es) sem funcionarios
select a.nome, b.nome 
from Setor as a left join Funcionario as b 
on b.setor = a.codigo 
where b.nome is null

--5 mostra os clientes que gastaram entre 20.00 e 60.00 reais em compras
select a.codigo, a.nome, b.valorTotal as GastoCliente
from cliente as a join Venda as b 
on a.codigo = b.cliente 
where valorTotal between 25.00 and 60.00
order by GastoCliente desc

--6 produtos menos vendidos (produtos vendidos menos de 3 vezes)
select a.nome, a.precoVenda, b.quantProduto 
from Produto as a join ItensVendidos as b
on a.codigo = b.produto where b.quantProduto < 3
order by b.quantProduto desc

--7 Estado de cada funcionario

select a.codigo, a.nome, c.nome 
from Funcionario as a join Endereco as b 
on a.endereco = b.codigo join Estado as c 
on b.estado = c.codigo

--8 valor de vendas de acordo com cada forma de pagamento
select a.descricao, sum(b.valorTotal) as valorDeVenda 
from FormaPagamento as a join Venda as b 
on a.codigo = b.formaPagamento 
group by a.descricao

--9 saber qual forma de pagamento recebeu o maior valor de venda
select top 1 a.descricao, sum(b.valorTotal) as valorDeVenda from FormaPagamento as a join Venda as b 
on a.codigo = b.formaPagamento 
group by a.descricao 
order by valorDeVenda desc 

--10 produtos que não foram vendidos
select a.nome, b.venda as ProdutoSemVenda 
from Produto as a left join ItensVendidos as b 
on a.codigo = b.produto 
where b.venda is null