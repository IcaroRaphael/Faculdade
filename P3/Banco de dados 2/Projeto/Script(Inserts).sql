use Supermercado
go

-- TABELA PRODUTO
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1001, 'Arroz Mundial', 'Arroz da marca Mundial', 'Alimento', 22.90, 27.70, 46);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1002, 'Feijão Mundial', 'Feijão da marca Mundial', 'Alimento', 19.70, 23.80, 67);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1003, 'Hambúrguer Seara', 'Hambúrguer da marca Seara', 'Alimento', 9.99, 12.99, 102);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1004, 'Leite Guarabira', 'Leite da marca Guarabira', 'Alimento', 15.23, 17.49, 39);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1005, 'Guaraná Jesus', 'Refrigerante guaraná da marca Jesus', 'Alimento', 5.99, 8.99, 208);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1006, 'Chocolate Garoto', 'Barra de chocolate da marca garoto', 'Alimento', 4.99, 7.99, 137);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1007, 'Macarrão MassaDaBoa', 'Macarrão da marca MassaDaBoa', 'Alimento', 4.78, 6.90, 112);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1008, 'Detergente LimpaGeral', 'Detergente da marca LimpaGeral', 'Material de limpeza', 3.99, 5.49, 58);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1009, 'Sabonete Senador', 'Sabonete da marca Senador', 'Higiene pessoal', 0.99, 1.99, 1023);
insert dbo.Produto (codigo, nome, descricao, categoria, precoCusto, precoVenda, quantEstoque) 
values(1010, 'Sabão em pó Omo', 'Sabão em pó da marca Omo', 'Material de limpeza', 6.90, 8.90, 78);


-- TABELA CLIENTE 
Insert dbo.Cliente (codigo, nome, cpf) 
values(001, 'Alexandre','132.752.294-17');
Insert dbo.Cliente (codigo, nome, cpf) 
values(002, 'Alessandro','192.446.735-06');
Insert dbo.Cliente (codigo, nome, cpf) 
values(003, 'Bianca','135.473.291-11');
Insert dbo.Cliente (codigo, nome, cpf) 
values(004, 'Beatriz','032.665.446-03');
Insert dbo.Cliente (codigo, nome, cpf) 
values(005, 'Carlos','095.402.106-97');
Insert dbo.Cliente (codigo, nome, cpf) 
values(006, 'Otavio','273.554.109-09');
Insert dbo.Cliente (codigo, nome, cpf) 
values(007, 'Victor','402.106.443-97');      
Insert dbo.Cliente (codigo, nome, cpf) 
values(008, 'Wesley','510.775.456-00');

-- TABELA FORMA DE PAGAMENTO
Insert dbo.FormaPagamento (codigo, descricao) 
values (001,'A vista'); 
Insert dbo.FormaPagamento (codigo, descricao) 
values(002,'Cartão de Credito');
Insert dbo.FormaPagamento (codigo, descricao)
values(003,'Pix');
Insert dbo.FormaPagamento (codigo, descricao)
values(004,'Cartão de Debito');
Insert dbo.FormaPagamento (codigo, descricao) 
values(005,'Cheque');
Insert dbo.FormaPagamento (codigo, descricao) 
values(006,'Cripto moeda');

-- TABELA SETOR

Insert dbo.Setor (codigo, nome, descricao) 
values(001,'Vendas','Setor responsável pelas vendas');
Insert dbo.Setor (codigo, nome, descricao) 
values(002,'Limpeza','Setor responsável pela limpeza');
Insert dbo.Setor (codigo, nome, descricao) 
values(003,'Gerência','Setor responsável pela admistração');
Insert dbo.Setor (codigo, nome, descricao) 
values(004,'Estoque','Setor responsável pela gestão e organização dos produtos');
Insert dbo.Setor (codigo, nome, descricao) 
values(005,'Contabilidade','Setor responsável pela parte financeira e economica');
Insert dbo.Setor (codigo, nome, descricao) 
values(006,'Setor Geral','Setor não fixo do supermercado');

-- TABELA TELEFONE
Insert dbo.Telefone (codigo,numfone01,numFone02) 
values(0000000001, '(83) 99963-3946', '(83) 99413-9614');
Insert dbo.Telefone (codigo,numfone01,numFone02) 
values(0000000002, '(83) 99343-3286', '(83) 99683-9194');
Insert dbo.Telefone (codigo,numfone01,numFone02) 
values(0000000003, '(83) 99746-3656', '(83) 99485-6114');
Insert dbo.Telefone (codigo,numfone01,numFone02,numFone03) 
values(0000000004, '(83) 99346-3766', '(83) 99485-6244', '(84) 99612-7432');
Insert dbo.Telefone (codigo,numfone01,numFone02,numFone03) 
values(0000000005, '(83) 99346-8462', '(83) 99496-7344', '(84) 99883-8432');
Insert dbo.Telefone (codigo,numfone01,numFone02,numFone03) 
values(0000000006, '(83) 99446-8486', '(83) 99636-7194', '(84) 99863-8497');
Insert dbo.Telefone (codigo,numfone01) 
values(0000000007, '(83) 99612-9614');
Insert dbo.Telefone (codigo,numfone01) 
values(0000000008, '(83) 99371-1468');