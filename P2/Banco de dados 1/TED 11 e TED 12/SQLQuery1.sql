-- Cria��o do Banco de Dados
CREATE DATABASE bdi221;
GO

-- Definir qual banco de dados vamos utilizar
USE bdi221;
GO

-- TABELA PRODUTOS
DROP TABLE DBO.PRODUTOS;
GO

-- Cria��o da tabela produtos
CREATE TABLE PRODUTOS(
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(50),
	DESCRICAO VARCHAR(255),
	VALOR DECIMAL(5,2)
	CONSTRAINT PK_PRODUTOS PRIMARY KEY(ID)
);
GO

-- TABELA FORMA_PAGAMENTO
DROP TABLE FORMA_PAGAMENTO;
GO

CREATE TABLE FORMA_PAGAMENTO(
	ID INT IDENTITY(1,1) NOT NULL,
	DESCRICAO VARCHAR(50) NOT NULL,
	CONSTRAINT PK_FORMA_PAGAMENTO PRIMARY KEY(ID)
);
GO

-- TABELA FUNCIONARIO
DROP TABLE FUNCIONARIO;
GO

CREATE TABLE FUNCIONARIO(
	ID INT IDENTITY(1,1) NOT  NULL,
	NOME VARCHAR(255) NOT NULL,
	CPF VARCHAR(11) NOT NULL,
	SALARIO DECIMAL(6,2) NOT NULL,
	--COD ENDERECO
	TIPO CHAR(1) NULL,
	N_CONSELHO INT NULL,
	ESPECIALIDADE VARCHAR(20) NULL,
	COMISSAO DECIMAL(4,2),
	CONSTRAINT PK_FUNCIONARIO PRIMARY KEY(ID)
);
GO

-- TABELA CLIENTE
DROP TABLE CLIENTE;
GO

CREATE TABLE CLIENTE(
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(255) NOT NULL,
	-- COD_ENDERECO
	-- TELEFONE
	EMAIL VARCHAR(50) NOT NULL,
	CONSTRAINT PK_CLIENTE PRIMARY KEY(ID)
);
GO

-- TABELA PRONTUARIO
DROP TABLE PRONTUARIO;
GO

CREATE TABLE PRONTUARIO(
	ID INT IDENTITY(1,1) NOT NULL,
	DESCRICAO VARCHAR(255),
	TEMPERATURA DECIMAL(3,1),
	PESO DECIMAL(3,1),
	CONSTRAINT PK_PRONTUARIO PRIMARY KEY(ID)
);
GO

-- TABELA PET
DROP TABLE PET;
GO

CREATE TABLE PET(
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(50),
	ESPECIE VARCHAR(50),
	PORTE VARCHAR(50),
	DT_NASC DATE,
	ID_PRONTUARIO INT NULL,
	CONSTRAINT PK_PET PRIMARY KEY(ID),
	CONSTRAINT FK_PET_PRONTUARIO FOREIGN KEY(ID_PRONTUARIO)
	REFERENCES DBO.PRONTUARIO(ID)
);
GO

-- TABELA CLIENTE-PET
DROP TABLE CLIENTE_PET;
GO

CREATE TABLE CLIENTE_PET(
	ID INT IDENTITY(1,1) NOT NULL,
	ID_CLIENTE INT NOT NULL,
	ID_PET INT NOT NULL,
	CONSTRAINT PK_CLIENTE_PET PRIMARY KEY(ID),
	CONSTRAINT FK_CLIENTE_PET_CLIENTE FOREIGN KEY(ID_CLIENTE)
	REFERENCES DBO.CLIENTE(ID),
	CONSTRAINT FK_CLIENTE_PET_PET FOREIGN KEY(ID_PET)
	REFERENCES DBO.PET(ID)
);
GO

-----------------------------------------
-- TABELA RESIDENCIA
DROP TABLE RESIDENCIA;
GO

CREATE TABLE RESIDENCIA(
	ID INT IDENTITY(1,1) NOT NULL,
	DESCRICAO VARCHAR(255),
	CONSTRAINT PK_RESIDENCIA PRIMARY KEY(ID)
);
GO

-- TABELA ENDERECO
DROP TABLE ENREDECO;
GO

CREATE TABLE ENDERECO(
	ID INT IDENTITY(1,1) NOT NULL,
	ID_RESIDENCIA INT NOT NULL,
	NOME_RUA VARCHAR(255) NOT NULL,
	NUMERO INT NOT NULL,
	CEP INT NOT NULL,
	BAIRRO VARCHAR(50) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(50) NOT NULL,
	PAIS VARCHAR(50) NOT NULL,
	COMPLEMENTO VARCHAR(255) NULL,
	CONSTRAINT PK_ENDERECO PRIMARY KEY(ID),
	CONSTRAINT FK_RESIDENCIA FOREIGN KEY(ID_RESIDENCIA)
	REFERENCES DBO.RESIDENCIA(ID)
);
GO

-- TABELA VENDA
DROP TABLE VENDA;
GO

CREATE TABLE VENDA(
	ID INT IDENTITY(1,1) NOT NULL,
	ID_FORMA_PAGAMENTO INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	ID_FUNCIONARIO INT NOT NULL,
	CONSTRAINT PK_VENDA PRIMARY KEY(ID),
	CONSTRAINT FK_FORMA_PAGAMENTO FOREIGN KEY(ID_FORMA_PAGAMENTO)
	REFERENCES DBO.FORMA_PAGAMENTO(ID),
	CONSTRAINT FK_CLIENTE FOREIGN KEY(ID_CLIENTE)
	REFERENCES DBO.CLIENTE(ID),
	CONSTRAINT FK_FUNCIONARIO FOREIGN KEY(ID_FUNCIONARIO)
	REFERENCES DBO.FUNCIONARIO(ID)
);
GO

-- TABELA PRODUTO_VENDA
DROP TABLE PROD_VENDA;
GO

CREATE TABLE PROD_VENDA(
	ID INT IDENTITY(1,1) NOT NULL,
	ID_PRODUTO INT NOT NULL,
	ID_VENDA INT NOT NULL,
	CONSTRAINT PK_PROD_VENDA PRIMARY KEY(ID),
	CONSTRAINT FK_CODIGO_PRODUTO FOREIGN KEY(ID_PRODUTO)
	REFERENCES DBO.PRODUTOS(ID),
	CONSTRAINT FK_VENDA FOREIGN KEY(ID_VENDA)
	REFERENCES DBO.VENDA(ID)
);
GO

-- TABELA TELEFONE
DROP TABLE TELEFONE;
GO

CREATE TABLE TELEFONE(
	ID INT IDENTITY(1,1) NOT NULL,
	ID_FUNCIONARIO INT NOT NULL,
	ID_CLIENTE INT NOT NULL,
	EMAIL VARCHAR(255),
	CONSTRAINT PK_TELEFONE PRIMARY KEY(ID),
	CONSTRAINT FK_FUNCIONARIO FOREIGN KEY(ID_FUNCIONARIO)
	REFERENCES DBO.FUNCIONARIO(ID),
	CONSTRAINT FK_CLIENTE FOREIGN KEY(ID_CLIENTE)
	REFERENCES DBO.CLIENTE(ID)
);
GO