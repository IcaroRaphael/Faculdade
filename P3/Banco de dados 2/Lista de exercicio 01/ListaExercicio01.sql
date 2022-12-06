create database Loja
on (name=produtos_dat,
	filename = 'D:\SQLSV\loja_bd.mdf',
	size = 5,
	maxsize = 10,
	filegrowth = 1)

create table cliente(
	codigo char(5) not null 
		constraint pk_cliente primary key
		constraint ck_cliente_codigo check (codigo like '[a-z][a-z][a-z][a-z][a-z]'),
	nome varchar(40) not null,
	tipo char(1) not null 
		constraint ck_cliente_tipo check (tipo like '[FJ]'),
	contato varchar(30) null,
	cargo varchar(30) null,
	endereco varchar(50) not null,
	cidade smallint not null 
		constraint fk_cliente_cidade foreign key references cidade(codigo),
	cep varchar(10) null,
	fone varchar(16) null,
	fax varchar(16) null,
	obs text null
)

create table funcionario(
	codigo tinyint not null
		constraint pk_funcionario primary key
		constraint ck_funcionario_codigo check(len(codigo)<3),
	nome varchar(40) not null,
	sexo char(1) not null
		constraint ck_funcionario_sexo check(sexo like '[FM]'),
	estcivil char(1) not null
		constraint ck_funcionario_estcivil check(estcivil like '[SCDVO]'),
	rg varchar(15) not null
		constraint un_funcionario_rg unique,
	cpf varchar(12) not null
		constraint un_funcionario_cpf unique,
	trat varchar(4) not null
		constraint ck_funcionario_trat check(trat in ('Sr', 'Sra', 'Srta', 'Dr', 'Dra')),
	datanasc smalldatetime not null,
	natural smallint not null
		constraint fk_funcionario_cidade1 foreign key references cidade(codigo),
	dataadm smalldatetime not null,
	endereco varchar(40) not null,
	compl varchar(20) null,
	bairro varchar(20) null,
	reside smallint not null
		constraint fk_funcionario_cidade2 foreign key references cidade(codigo),
	cep varchar(10) null,
	fone varchar(10) null,
	celular varchar(10) null,
	funcao tinyint null
		constraint fk_funcionario_funcao foreign key references funcao(codigo),
	setor char(3) not null,
	salario smallmoney not null,
	email varchar(40) null,
	obs text null
)

alter table funcionario 
	add constraint fk_funcionario_setor 
foreign key(setor) 
	references setor(sigla)
go

create table setor(
	sigla char(3) not null
		constraint pk_setor primary key
		constraint ck_setor_sigla check(sigla like '[A-Z][A-Z][A-Z]'),
	nome varchar(30) not null
		constraint un_setor_nome unique,
	ramal smallint null
		constraint ck_setor_ramal check(len(ramal)<4),
	superior char(3) null
		constraint ck_setor_superior check(superior like '[A-Z][A-Z][A-Z]')
		constraint fk_setor_setor foreign key references setor(sigla),
	chefe tinyint null
		constraint un_setor_chefe unique
		constraint fk_setor_funcionario foreign key references funcionario(codigo)
)

create table funcao(
	codigo tinyint not null
		constraint pk_funcao primary key,
	nome varchar(30) not null
		constraint un_funcao_nome unique,
	gratific smallmoney not null
)

create table cidade(
	codigo smallint not null
		constraint pk_cidade primary key,
	nome varchar(30) not null,
	uf char(2) not null,
	pais char(3) not null
		constraint fk_cidade_pais foreign key references pais(sigla)
)

create table pais(
	sigla char(3) not null
		constraint pk_pais primary key,
	nome varchar(15) not null
		constraint un_pais_nome unique
)

create table produto(
	codigo smallint not null
		constraint pk_produto primary key,
	nome varchar(40) not null
		constraint un_produto_nome unique,
	descricao varchar(45) not null,
	apresent varchar(30) not null,
	venda smallmoney not null,
	custo smallmoney not null,
	quantest smallint not null,
	estmin smallint null,
	tipo tinyint not null
		constraint fk_produto_tipo foreign key references tipo(codigo),
	situacao char(1) null 
		constraint ck_produto_situacao check (situacao like '[NSD]')
)

create table tipo(
	codigo tinyint not null
		constraint pk_tipo primary key
		constraint ck_tipo_codigo check(len(codigo)<3),
	nome varchar(15) not null
		constraint un_tipo_nome unique,
	descricao text null
)

create table pedido(
	codigo smallint not null
		constraint pk_pedido primary key
		constraint ck_pedido_codigo check(len(codigo)<6),
	cliente char(5) not null
		constraint fk_pedido_cliente foreign key references cliente(codigo),
	vendedor tinyint not null 
		constraint fk_pedido_funcionario foreign key references funcionario(codigo),
	datapedid smalldatetime not null,
	datafatura smalldatetime null
)

create table itens(
	pedido smallint not null
		constraint fk_itens_pedido foreign key references pedido(codigo),
	produto smallint not null
		constraint fk_itens_produto foreign key references produto(codigo),
	primary key(pedido, produto),
	preco smallmoney not null,
	quant smallint not null,
	desconto decimal(4,1) not null
)