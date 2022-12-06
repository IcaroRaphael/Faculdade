create database Supermercado
on (name=supermercado_dat,
	filename = 'C:\SQLSV\supermercado_bd.mdf')
go

use Supermercado
go

create table Produto(
	codigo int not null
		constraint pk_produto primary key,
	nome varchar(100) not null,
	descricao varchar(255) not null,
	categoria varchar(100) not null,
	precoCusto smallmoney not null,
	precoVenda smallmoney not null,
	quantEstoque int not null
)

create table Cliente(
	codigo int not null
		constraint pk_cliente primary key,
	nome varchar(255) not null,
	cpf varchar(14) not null
		constraint un_cliente_cpf unique
)

create table FormaPagamento(
	codigo int not null
		constraint pk_formaPagamento primary key,
	descricao varchar(255) not null
)

create table Setor(
	codigo int not null
		constraint pk_setor primary key,
	nome varchar(100) not null,
	descricao varchar(255) not null
)

create table Telefone(
	codigo int not null
		constraint pk_telefone primary key,
	numFone01 varchar(11) not null,
	numFone02 varchar(11) null,
	numFone03 varchar(11) null
)

create table Cep(
	codigo int not null
		constraint pk_cep primary key,
	cep varchar(8) not null
		constraint un_cep_cep unique
)

create table Bairro(
	codigo int not null
		constraint pk_bairro primary key,
	nome varchar(100) not null
)

create table Cidade(
	codigo int not null
		constraint pk_cidade primary key,
	nome varchar(100) not null
)

create table Estado(
	codigo int not null
		constraint pk_estado primary key,
	nome varchar(100) not null
)

create table Pais(
	codigo int not null
		constraint pk_pais primary key,
	nome varchar(100) not null
)

create table Endereco(
	codigo int not null
		constraint pk_endereco primary key,
	rua varchar not null,
	numero int not null,
	cep int not null
		constraint fk_endereco_cep foreign key references Cep(codigo),
	bairro int not null
		constraint fk_endereco_bairro foreign key references Bairro(codigo),
	cidade int not null
		constraint fk_endereco_cidade foreign key references Cidade(codigo),
	estado int not null
		constraint fk_endereco_estado foreign key references Estado(codigo),
	pais int not null
		constraint fk_endereco_pais foreign key references Pais(codigo),
	complemento varchar(255) null
)

create table Funcionario(
	codigo int not null
		constraint pk_funcionario primary key,
	nome varchar(255) not null,
	salario smallmoney not null,
	funcao varchar(100) not null,
	cpf varchar(14) not null
		constraint un_funcionario_cpf unique,
	telefone int not null
		constraint fk_funcionario_telefone foreign key references Telefone(codigo),
	endereco int not null
		constraint fk_funcionario_endereco foreign key references Endereco(codigo),
	setor int not null
		constraint fk_funcionario_setor foreign key references Setor(codigo)
)

create table Venda(
	codigo int not null
		constraint pk_venda primary key,
	valorTotal smallmoney not null,
	cliente int not null
		constraint fk_venda_cliente foreign key references Cliente(codigo),
	formaPagamento int not null
		constraint fk_venda_formaPagamento foreign key references FormaPagamento(codigo),
	funcionario int not null
		constraint fk_venda_funcionario foreign key references Funcionario(Codigo)
)

create table ItensVendidos(
	codigo int not null
		constraint pk_itensVendidos primary key,
	produto int not null
		constraint fk_itensVendidos_produto foreign key references Produto(codigo),
	quantProduto int not null,
	venda int not null
		constraint fk_itensVendidos_venda foreign key references Venda(codigo)
)