CREATE DATABASE SCP20222QUI
GO
USE [SCP20222QUI]
GO
/****** Object:  Table [dbo].[setor]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[setor](
	[sigla] [char](3) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[ramal] [smallint] NULL,
	[superior] [char](3) NULL,
	[chefe] [tinyint] NOT NULL,
 CONSTRAINT [PK_setor] PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_chefe_setor] UNIQUE NONCLUSTERED 
(
	[chefe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_nome_setor] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'ALM', N'Almoxarifado                  ', 105, N'COV', 31)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'COV', N'Compras e Vendas              ', 102, N'PRS', 1)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'EXP', N'Expedição                     ', 111, N'COV', 14)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'FIN', N'Finanças                      ', 109, N'PRS', 10)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'MKT', N'Marketing                     ', 103, N'PRS', 3)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'PES', N'Pessoal                       ', 106, N'RHM', 4)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'PQD', N'Pesquisa e Desenvolvimento    ', 107, N'MKT', 6)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'PRS', N'Presidência                   ', 100, N'PRS', 2)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'RHM', N'Recursos Humanos              ', 101, N'PRS', 7)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'SVG', N'Serviços Gerais               ', 110, N'RHM', 33)
INSERT [dbo].[setor] ([sigla], [nome], [ramal], [superior], [chefe]) VALUES (N'TRN', N'Transporte                    ', 104, N'RHM', 16)
/****** Object:  Table [dbo].[funcao]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcao](
	[codigo] [tinyint] NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[gratific] [smallmoney] NOT NULL,
 CONSTRAINT [PK_funcao] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_nome_funcao] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (1, N'Presidente Geral              ', 5000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (2, N'Vice-Presidente Geral         ', 4000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (3, N'Diretor de Compras e Vendas   ', 3000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (4, N'Diretor de Marketing          ', 3000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (5, N'Diretor de Recursos Humanos   ', 2500.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (6, N'Diretor de Finanças           ', 2500.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (7, N'Gerente de Compras            ', 2000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (8, N'Gerente de Vendas             ', 2000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (9, N'Representante de Vendas       ', 1500.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (10, N'Vendedor Executivo            ', 1000.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (11, N'Vendedor Primário             ', 500.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (12, N'Despachante                   ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (13, N'Servente                      ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (14, N'Vigilante                     ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (15, N'Motorista                     ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (16, N'Telefonista                   ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (17, N'Contabilista                  ', 1500.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (18, N'Supervisor                    ', 1400.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (19, N'Contínuo                      ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (20, N'Secretária                    ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (21, N'Atendente                     ', 0.0000)
INSERT [dbo].[funcao] ([codigo], [nome], [gratific]) VALUES (22, N'Digitador                     ', 500.0000)
/****** Object:  Table [dbo].[pais]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pais](
	[sigla] [char](3) NOT NULL,
	[nome] [varchar](15) NOT NULL,
 CONSTRAINT [PK_pais] PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_nome_pais] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ALE', N'Alemanha       ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ARG', N'Argentina      ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'AUT', N'Austrália')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'AUS', N'Áustria        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'BEL', N'Bélgica        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'BRA', N'Brasil         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'CAN', N'Canadá         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'CHL', N'Chile          ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'CHI', N'China          ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'DIN', N'Dinamarca      ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ESC', N'Escócia')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ESP', N'Espanha        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'EUA', N'Estados Unidos ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'FIN', N'Finlândia      ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'FRA', N'França         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'GRE', N'Grécia         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ING', N'Inglaterra     ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'IRL', N'Irlanda        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'ITA', N'Itália         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'MEX', N'México         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'NOR', N'Noruega        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'POL', N'Polônia        ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'POR', N'Portugal       ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'RUS', N'Rússia         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'SUE', N'Suécia         ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'SUI', N'Suiça          ')
INSERT [dbo].[pais] ([sigla], [nome]) VALUES (N'VEN', N'Venezuela      ')
/****** Object:  Table [dbo].[tipo]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo](
	[codigo] [tinyint] NOT NULL,
	[nome] [varchar](15) NOT NULL,
	[descricao] [text] NULL,
 CONSTRAINT [PK_tipo] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (1, N'Bebidas        ', N'Refrigerantes, cafés, chás e cervejas')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (2, N'Condimentos    ', N'Patês, temperos, picles e molhos doces e salgados')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (3, N'Confeitos      ', N'Sobremesas, doces, pães doces')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (4, N'Laticínios     ', N'Queijos e manteigas')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (5, N'Grãos/Cereais  ', N'Pães, biscoitos, massas e cereais')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (6, N'Carnes/Aves    ', N'Carnes preparadas')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (7, N'Hortigranjeiros', N'Frutas secas e pastas vegetais')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (8, N'Frutos do Mar  ', N'Peixes e algas marinhas')
INSERT [dbo].[tipo] ([codigo], [nome], [descricao]) VALUES (9, N'Dietéticos     ', N'Produtos diversos com baixo teor calórico.
')
/****** Object:  Table [dbo].[cidade]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cidade](
	[codigo] [smallint] NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[uf] [char](2) NOT NULL,
	[pais] [char](3) NOT NULL,
 CONSTRAINT [PK_cidade] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (1, N'Recife                        ', N'PE', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (2, N'Natal                         ', N'RN', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (3, N'Rio de Janeiro                ', N'RJ', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (4, N'São Paulo                     ', N'SP', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (5, N'Curitiba                      ', N'PR', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (6, N'Florianópolis                 ', N'SC', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (7, N'João Pessoa                   ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (8, N'Campina Grande                ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (9, N'Campinas                      ', N'SP', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (10, N'Brasília                      ', N'DF', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (11, N'Salvador                      ', N'BA', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (12, N'Petrópolis                    ', N'RJ', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (13, N'Berlin                        ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (14, N'México                        ', N'  ', N'MEX')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (15, N'London                        ', N'  ', N'ING')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (16, N'Lulea                         ', N'  ', N'SUE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (17, N'Mannhein                      ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (18, N'Strasbourg                    ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (19, N'Madrid                        ', N'  ', N'ESP')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (20, N'Marseille                     ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (21, N'Tsawassen                     ', N'BC', N'CAN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (22, N'Buenos Aires                  ', N'  ', N'ARG')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (23, N'Bern                          ', N'  ', N'SUI')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (24, N'Aachen                        ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (25, N'Nantes                        ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (26, N'Graz                          ', N'  ', N'AUS')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (27, N'Lille                         ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (28, N'Bräcke                        ', N'  ', N'SUE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (29, N'München                       ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (30, N'Torino                        ', N'  ', N'ITA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (31, N'Cabedelo                      ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (32, N'Lisboa                        ', N'  ', N'POR')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (33, N'Barcelona                     ', N'  ', N'ESP')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (34, N'Sevilla                       ', N'  ', N'ESP')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (35, N'Eugene                        ', N'OR', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (36, N'Caracas                       ', N'DF', N'VEN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (37, N'San Cristóbal                 ', N'Tá', N'VEN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (38, N'Elgin                         ', N'OR', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (39, N'Cork                          ', N'CO', N'ARG')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (40, N'Hedge End                     ', N'La', N'ING')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (41, N'Brandenburg                   ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (42, N'Versailles                    ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (43, N'Toulouse                      ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (44, N'Vancouver                     ', N'  ', N'CAN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (45, N'Walla Walla                   ', N'WA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (46, N'Frankfurt                     ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (47, N'San Francisco                 ', N'CA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (48, N'Barquisimeto                  ', N'La', N'VEN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (49, N'Margarita                     ', N'Nu', N'VEN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (50, N'Portland                      ', N'OR', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (51, N'Bergamo                       ', N'  ', N'ITA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (52, N'Bruxelles                     ', N'  ', N'BEL')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (53, N'Montreal                      ', N'Qu', N'CAN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (54, N'Leipzig                       ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (55, N'Anchorage                     ', N'AK', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (56, N'Köln                          ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (57, N'Paris                         ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (58, N'Salzburg                      ', N'  ', N'AUS')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (59, N'Cunewalde                     ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (60, N'Albuquerque                   ', N'NM', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (61, N'Reggio Emilia                 ', N'  ', N'ITA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (62, N'Geneve                        ', N'  ', N'SUI')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (63, N'Stavern                       ', N'  ', N'NOR')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (64, N'Boise                         ', N'ID', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (65, N'Kobenhavn                     ', N'  ', N'DIN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (66, N'Lander                        ', N'WY', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (67, N'Charleroi                     ', N'  ', N'BEL')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (68, N'Butte                         ', N'MT', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (69, N'Münster                       ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (70, N'Kirkland                      ', N'WA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (71, N'Arhus                         ', N'  ', N'DIN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (72, N'Lyon                          ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (73, N'Reims                         ', N'  ', N'FRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (74, N'Stuttgart                     ', N'  ', N'ALE')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (75, N'Oulu                          ', N'  ', N'FIN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (76, N'Resende                       ', N'SP', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (77, N'Helsinki                      ', N'  ', N'FIN')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (78, N'Warszawa                      ', N'  ', N'POL')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (79, N'Seattle                       ', N'WA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (80, N'Tacoma                        ', N'WA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (81, N'Redmond                       ', N'WA', N'EUA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (82, N'Carpina                       ', N'PE', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (83, N'Mamanguape                    ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (84, N'Santa Rita                    ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (85, N'Mossoró                       ', N'RN', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (86, N'Patos                         ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (87, N'Guarabira                     ', N'PB', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (88, N'Cabo                          ', N'PE', N'BRA')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (89, N'Cowes                         ', N'IW', N'ING')
INSERT [dbo].[cidade] ([codigo], [nome], [uf], [pais]) VALUES (90, N'Parla                         ', N'GE', N'GRE')
/****** Object:  Table [dbo].[funcionario]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario](
	[codigo] [tinyint] NOT NULL,
	[nome] [varchar](40) NOT NULL,
	[sexo] [char](1) NOT NULL,
	[estcivil] [char](1) NOT NULL,
	[rg] [varchar](15) NULL,
	[cpf] [varchar](12) NULL,
	[trat] [varchar](5) NOT NULL,
	[datanasc] [smalldatetime] NOT NULL,
	[natural] [smallint] NOT NULL,
	[dataadm] [smalldatetime] NOT NULL,
	[endereco] [varchar](40) NOT NULL,
	[complement] [varchar](20) NULL,
	[bairro] [varchar](20) NOT NULL,
	[cidade] [smallint] NOT NULL,
	[cep] [varchar](10) NULL,
	[fone] [varchar](10) NULL,
	[celular] [varchar](10) NULL,
	[funcao] [tinyint] NULL,
	[setor] [char](3) NOT NULL,
	[salario] [smallmoney] NOT NULL,
	[email] [varchar](40) NULL,
	[obs] [text] NULL,
 CONSTRAINT [PK_funcionario] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_cpf_funcionario] UNIQUE NONCLUSTERED 
(
	[cpf] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_rg_funcionario] UNIQUE NONCLUSTERED 
(
	[rg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (1, N'Nancy Davolio Luperfill                 ', N'F', N'C', N'129657/RS      ', N'222721637-12', N'Sra', CAST(0x45D10000 AS SmallDateTime), 79, CAST(0x83BB0000 AS SmallDateTime), N'R. Joaquim Carvalho Mesquita, 756       ', N'Apto. 802           ', N'Manaíra             ', 7, N'58030-580 ', N'246.2587  ', N'981.1222  ', 3, N'COV', 5100.0000, N'nancy@tastrade.com.br                   ', N'Sua educação inclui um bacharelado em Psicologia pela Universidade de Colorado em 1970. Nancy é membro do Conselho Internacional de Alimentação e é considerada como uma das 10% melhores alunas de sua turma de formatura.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (2, N'Andrew Fuller Jordan                    ', N'M', N'C', N'45798613/PR    ', N'234678234-98', N'Dr  ', CAST(0x4A610000 AS SmallDateTime), 80, CAST(0x84240000 AS SmallDateTime), N'R. Joaquim Ferreira Costa, 729          ', NULL, N'Manaíra             ', 7, N'58038-123 ', N'246.5452  ', N'981.2784  ', 1, N'PRS', 8300.0000, N'andrew@tastrade.com.br                  ', N'Andrew formou-se em Propaganda e Marketing pela Universidade de Dallas em 1971. É fluente em francês e italiano e lê alemão, com 50% de facilidade. Ele entrou na companhia como representante de vendas, foi promovido a gerente de vendas em janeiro de 1992 e a vice-presidente de vendas em março de 1993. Andrew é membro do Conselho de Gerentes de Vendas, da Câmara de Comércio de Seattle e da Associação de Importadores do Círculo Pacífico.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (3, N'Janet Leverling Follet                  ', N'F', N'S', N'4572457/SC     ', N'123658123-98', N'Srta', CAST(0x5AD30000 AS SmallDateTime), 70, CAST(0x839D0000 AS SmallDateTime), N'R. Flávio Melo Uchoa, 72                ', N'Apto. 502           ', N'Bessa               ', 7, N'58037-100 ', N'246.9008  ', N'982.1333  ', 4, N'MKT', 5100.0000, N'lever@tastrede.com.br                   ', N'Janet formou-se em Química pela Faculdade de Boston em 1984. Tem também certificado de conclusão do curso de Gerenciamento de Vendas de Alimentos. Janet foi contratada como assessora de vendas em 1991 e foi promovida a representante de vendas em fevereiro de 1992.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (4, N'Margaret Peacock Somensen               ', N'F', N'C', N'142589/RS      ', N'123456789-10', N'Sra', CAST(0x35CF0000 AS SmallDateTime), 81, CAST(0x852A0000 AS SmallDateTime), N'R. Silvino Lopes, 387                   ', NULL, N'Tambaú              ', 7, N'58039-190 ', N'246.4549  ', N'984.1245  ', 10, N'COV', 1120.0000, N'peacock@tastrade.com.br                 ', N'Margaret tem bacharelado em Literatura Inglesa pela Faculdade de Concordia (1958) e mestrado pelo Instituto Americano de Artes Culinárias (1966). Ela foi designada temporariamente para o escritório de Londres entre julho e novembro de 1992.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (5, N'Steven Buchanan Pringless               ', N'M', N'C', N'45983524/PR    ', N'326598747-45', N'Sr', CAST(0x4EB60000 AS SmallDateTime), 15, CAST(0x85D10000 AS SmallDateTime), N'R. Eliseu Cândido Viana, 234            ', N'Apto. 701           ', N'Tambaú              ', 7, N'58038-090 ', N'246.2323  ', N'985.4589  ', 2, N'PRS', 6200.0000, N'buchanan@tastrade.com.br                ', N'Steven Buchanan formou-se pela Universidade St. Andrews, Escócia, em 1976. Depois de trabalhar na empresa como representante de vendas em 1992, passou 6 meses em um programa de orientação no escritório de Seattle e voltou ao seu posto permanente em Londres. Foi promovido a gerente de vendas em março de 1993. O Sr. Buchanan concluiu cursos de Telemarketing e de Gerente de Vendas Internacionais. Ele é fluente em francês.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (6, N'Michael Suyama Kyoto                    ', N'M', N'C', N'1565914/SC     ', N'235698523-98', N'Sr', CAST(0x5A980000 AS SmallDateTime), 15, CAST(0x85D10000 AS SmallDateTime), N'Av. Rio grande do Sul, 1234             ', NULL, N'Bairro dos Estados  ', 7, N'50030-063 ', N'244.7873  ', N'981.2374  ', 10, N'COV', 1120.0000, N'suyama@tastrade.com.br                  ', N'Michael formou-se em Economia pela Universidade de Sussex, MA, em 1983, e em Marketing pela Universidade da Califórnia, em Los Angeles, em 1986. Também fez cursos de Comércio Multicultural e Administração para Profisssionais de Vendas. Ele é fluente em japonês e sabe ler e escrever em francês, português e espanhol.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (7, N'Robert King Williams                    ', N'M', N'C', N'25258984/SP    ', N'236598741-88', N'Sr', CAST(0x562F0000 AS SmallDateTime), 15, CAST(0x861E0000 AS SmallDateTime), N'Av. Epitácio Pessoa, 1281               ', NULL, N'Tambaú              ', 7, N'58036-012 ', N'226.3498  ', N'982.5575  ', 5, N'RHM', 4700.0000, N'robeking@tastrade.com.br                ', N'Robert King serviu nas Forças de Paz e viajou muito antes de obter seu diploma de inglês na Universidade de Michigan em 1992, ano em que ingressou na empresa. Depois de concluir um curso chamado "Vendas na Europa", ele foi transferido para o escritório de Londres em março de 1993.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (8, N'Laura Callahan Monfiglio                ', N'F', N'C', N'12365214/SP    ', N'223652587-89', N'Sra', CAST(0x52C80000 AS SmallDateTime), 66, CAST(0x865C0000 AS SmallDateTime), N'R. Eliseu Lira, 78                      ', N'Apto. 503           ', N'Miramar             ', 7, N'58032-040 ', N'247.2158  ', N'983.2258  ', 10, N'COV', 1120.0000, N'callahan@tastrade.com.br                ', N'Laura tem bacharelado em Psicologia pela Universidade de Washington. Ela também concluiu um curso de francês empresarial. Ela lê e escreve em francês.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (9, N'Anne Dodsworth Sausbrown                ', N'F', N'C', N'12458721/SP    ', N'235321457-12', N'Sra', CAST(0x5E440000 AS SmallDateTime), 15, CAST(0x875B0000 AS SmallDateTime), N'Av. Pernambuco, 234                     ', NULL, N'Bairro dos Estados  ', 7, N'58030-240 ', N'244.1210  ', N'984.3636  ', 9, N'COV', 2800.0000, N'annedods@tastrade.com.br                ', N'Anne é formada em inglês pela Faculdade St. Lawrence. Ela é fluente em francês e alemão e foi chefe de vendas de 65% das filiais da empresa.')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (10, N'Douglas Martins de Castro               ', N'M', N'C', N'12568996/PE    ', N'123458123-95', N'Sr', CAST(0x567E0000 AS SmallDateTime), 1, CAST(0x888C0000 AS SmallDateTime), N'Av. Rui Carneiro, 245                   ', NULL, N'Tambaú              ', 7, N'58032-000 ', N'247.3159  ', N'981.4568  ', 6, N'FIN', 4700.0000, N'douglas@tastrade.com.br                 ', N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (11, N'Edmea Costa Pereira                     ', N'F', N'S', N'4596258/PB     ', N'456325987-85', N'Srta', CAST(0x61930000 AS SmallDateTime), 7, CAST(0x87F80000 AS SmallDateTime), N'Paulino Pinto, 642                      ', NULL, N'Tambaú              ', 7, N'58045-000 ', N'247.2359  ', N'985.2658  ', 7, N'COV', 4000.0000, N'edmea@tastrade.com.br                   ', N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (12, N'Romero da Silveira Barreto              ', N'M', N'C', N'1245789/PB     ', N'154896351-87', N'Sr', CAST(0x54270000 AS SmallDateTime), 82, CAST(0x86A00000 AS SmallDateTime), N'R. Paulo Franca Marinho, 124            ', NULL, N'Miramar             ', 7, N'58032-150 ', N'2263598   ', N'985.5987  ', 8, N'COV', 4000.0000, N'rbarreto@tastrade.com.br                ', N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (13, N'Kátia Maria Costa Barros                ', N'F', N'S', N'1565329/PB     ', N'456654312-59', N'Srta', CAST(0x625E0000 AS SmallDateTime), 2, CAST(0x89A70000 AS SmallDateTime), N'R. João José Costa, 346                 ', NULL, N'Ernesto Geisel      ', 7, N'58075-030 ', N'231.0312  ', NULL, 16, N'SVG', 600.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (14, N'Micheline Gomes Barbosa                 ', N'F', N'S', N'9864579/PB     ', N'436598742-81', N'Srta', CAST(0x639B0000 AS SmallDateTime), 86, CAST(0x8A920000 AS SmallDateTime), N'R. Silvino Chaves, 234                  ', N'Apto. 301           ', N'Tambaú              ', 7, N'58038-000 ', N'247.6984  ', N'982.3568  ', 18, N'EXP', 1100.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (15, N'Carlos Braskey Costa                    ', N'M', N'C', N'5689741/PB     ', N'452136987-72', N'Sr', CAST(0x43910000 AS SmallDateTime), 85, CAST(0x88E30000 AS SmallDateTime), N'R. Nestor Costa Melo, 245               ', NULL, N'Bancários           ', 7, N'58052-032 ', N'235.2356  ', NULL, 9, N'COV', 2800.0000, N'braskey@tastrade.com.br                 ', N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (16, N'João Carlos Wanderley                   ', N'M', N'C', N'15698435/PB    ', N'456987125-98', N'Sr', CAST(0x52020000 AS SmallDateTime), 84, CAST(0x87630000 AS SmallDateTime), N'R. João Teixeira Carvalho, 480          ', N'Apto. 403           ', N'Pedro Gondim        ', 7, N'58031-220 ', N'244.5689  ', N'951.2356  ', 15, N'TRN', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (17, N'Madeleine Bezerra Araújo                ', N'F', N'S', N'2359844/PB     ', N'456897215-45', N'Srta', CAST(0x67850000 AS SmallDateTime), 3, CAST(0x897D0000 AS SmallDateTime), N'R. Silva Mariz, 24                      ', NULL, N'Cruz das Armas      ', 7, N'58085-350 ', N'222.9891  ', N'982.3568  ', 16, N'SVG', 600.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (18, N'Agamenon Correa Filho                   ', N'M', N'S', N'4561236/PB     ', N'123456654-12', N'Sr', CAST(0x59910000 AS SmallDateTime), 2, CAST(0x86A00000 AS SmallDateTime), N'Av. Espírito Santo, 345                 ', NULL, N'Bairro dos Estados  ', 7, N'58030-065 ', N'244.5894  ', N'985.9800  ', 11, N'COV', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (19, N'Pedro Gregório Ramos Pimenta            ', N'M', N'C', N'12365487/PE    ', N'456212354-45', N'Sr', CAST(0x55B80000 AS SmallDateTime), 6, CAST(0x86540000 AS SmallDateTime), N'R. João Úrsulo Filho, 234               ', N'Apto. 201           ', N'Mangabeira II       ', 7, N'58055-360 ', N'238.3265  ', NULL, 14, N'SVG', 550.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (20, N'Luzinete Vistor Santana                 ', N'F', N'S', N'4569974/PB     ', N'564541215-65', N'Srta', CAST(0x61930000 AS SmallDateTime), 8, CAST(0x8BC00000 AS SmallDateTime), N'R. Odete Gomes Araújo, 345              ', NULL, N'Bessa     ', 7, N'58057-303 ', N'238.5698  ', N'984.3267  ', 11, N'COV', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (21, N'Walderlan Santoa Silva                  ', N'M', N'C', N'54654564/RN    ', N'456871135-13', N'Sr', CAST(0x580F0000 AS SmallDateTime), 8, CAST(0x88E30000 AS SmallDateTime), N'R. Odília Sebadelhe, 234                ', NULL, N'Cristo Redentor     ', 7, N'58071-735 ', N'231.2568  ', NULL, 14, N'SVG', 550.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (22, N'Gláucio Barbosa Leite                   ', N'M', N'C', N'54645665/PE    ', N'453888688-64', N'Sr', CAST(0x55C40000 AS SmallDateTime), 1, CAST(0x89530000 AS SmallDateTime), N'R. Odilon Egito, 23                     ', NULL, N'Torre               ', 7, N'58040-630 ', N'244.3298  ', NULL, 15, N'TRN', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (23, N'Maria Creusa Santos Lima                ', N'F', N'C', N'456895412/PE   ', N'456325699-78', N'Sra', CAST(0x53BE0000 AS SmallDateTime), 5, CAST(0x88170000 AS SmallDateTime), N'R. Silvano Domingos Araújo, 234         ', NULL, N'Bessa               ', 7, N'58036-070 ', N'246.3026  ', N'985.3698  ', 17, N'FIN', 3000.0000, N'creusal@tastrade.com.br                 ', N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (24, N'Solange Gusmão Porto                    ', N'F', N'C', N'65983215/PB    ', N'958421350-98', N'Sra ', CAST(0x54F80000 AS SmallDateTime), 8, CAST(0x86FF0000 AS SmallDateTime), N'R. João Soares Costa,                   ', NULL, N'Cruz das Armas      ', 7, N'58085-490 ', NULL, NULL, 13, N'SVG', 400.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (25, N'Cleobaldo Nunes Matos                   ', N'M', N'C', N'21231212/PB    ', N'123545455-13', N'Sr', CAST(0x5ED70000 AS SmallDateTime), 7, CAST(0x886E0000 AS SmallDateTime), N'R. Marcina Maria Almeida, 87            ', NULL, N'Mangabeira II       ', 7, N'58087-252 ', N'238.0109  ', NULL, 14, N'SVG', 550.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (26, N'Maria Lúcia Sandoval Pessoa             ', N'F', N'C', N'45545151/PE    ', N'123658412-89', N'Sra', CAST(0x5F390000 AS SmallDateTime), 31, CAST(0x89E40000 AS SmallDateTime), N'R. Brigadeiro Lopes, 342                ', NULL, N'Centro              ', 31, N'58000-000 ', N'228.2543  ', NULL, 12, N'EXP', 500.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (27, N'Dorgival Salustiano Vasques             ', N'M', N'C', N'1323659/PB     ', N'659784212-12', N'Sr', CAST(0x64640000 AS SmallDateTime), 7, CAST(0x89D80000 AS SmallDateTime), N'R. Vicente Leipo, 345                   ', NULL, N'Bessa               ', 7, N'58035-060 ', N'246.3298  ', N'983.2894  ', 11, N'COV', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (28, N'Valda Maria Braga da Silva              ', N'F', N'S', N'4541122/PB     ', N'458743878-32', N'Srta', CAST(0x66380000 AS SmallDateTime), 7, CAST(0x87820000 AS SmallDateTime), N'R Alves de Sá, 853                      ', NULL, N'Jardim 13 de Maio   ', 7, N'58035-012 ', NULL, NULL, 12, N'EXP', 500.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (29, N'Paulo Brandão Albuquerque               ', N'M', N'C', N'54564545/PB    ', N'986531245-48', N'Sr', CAST(0x5A6E0000 AS SmallDateTime), 84, CAST(0x88E30000 AS SmallDateTime), N'R. Libertadores, 234                    ', NULL, N'Centro              ', 84, N'58000-000 ', NULL, NULL, 14, N'SVG', 550.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (30, N'Francisca Lopes Gonzaga                 ', N'F', N'S', N'21313148/PB    ', N'212354112-15', N'Srta', CAST(0x68C90000 AS SmallDateTime), 7, CAST(0x88F80000 AS SmallDateTime), N'Av. Marechal Deodoro, 678               ', NULL, N'Torre               ', 7, N'58045-065 ', NULL, NULL, 13, N'SVG', 400.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (31, N'Sandra Almeida Prado                    ', N'F', N'S', N'645641545/PB   ', N'656454598-16', N'Srta', CAST(0x61300000 AS SmallDateTime), 7, CAST(0x880F0000 AS SmallDateTime), N'R. Nunes Filho, 234                     ', NULL, N'Tambauzinho         ', 7, N'58033-030 ', N'244.5612  ', N'984.2398  ', 18, N'ALM', 1100.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (32, N'Clóvis Beltrão Borba                    ', N'M', N'S', N'15345668/PB    ', N'156456456-12', N'Sr', CAST(0x59050000 AS SmallDateTime), 7, CAST(0x895E0000 AS SmallDateTime), N'R. Carlos Alverga, 34                   ', NULL, N'Tambaú              ', 7, N'58045-012 ', N'226.2340  ', N'981.0221  ', 11, N'ALM', 800.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (33, N'Vilibaldo Saturnino Simão               ', N'M', N'C', N'22313545/PB    ', N'562314897-15', N'Sr', CAST(0x658D0000 AS SmallDateTime), 7, CAST(0x87580000 AS SmallDateTime), N'R, Lindolfo José Neves, 419             ', N'Apto. 701           ', N'Bessa               ', 7, N'58037-520 ', N'246.2741  ', N'985.1211  ', 18, N'COV', 1100.0000, NULL, N'')
INSERT [dbo].[funcionario] ([codigo], [nome], [sexo], [estcivil], [rg], [cpf], [trat], [datanasc], [natural], [dataadm], [endereco], [complement], [bairro], [cidade], [cep], [fone], [celular], [funcao], [setor], [salario], [email], [obs]) VALUES (34, N'João Astrolábio Bezerra                 ', N'M', N'C', N'987587589/PB   ', N'987654321-98', N'Sr', CAST(0x56220000 AS SmallDateTime), 7, CAST(0x88F00000 AS SmallDateTime), N'Av. São Paulo, 324                      ', NULL, N'Bairro dos Estados  ', 7, N'58030-061 ', N'244.5897  ', N'981.9806  ', 10, N'COV', 1120.0000, N'astro@tastrade.com.br                   ', N'')
/****** Object:  Table [dbo].[produto]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[produto](
	[codigo] [smallint] NOT NULL,
	[nome] [varchar](40) NOT NULL,
	[descricao] [varchar](45) NULL,
	[apresent] [varchar](30) NOT NULL,
	[venda] [smallmoney] NOT NULL,
	[custo] [smallmoney] NULL,
	[quantest] [smallint] NOT NULL,
	[estmin] [smallint] NULL,
	[tipo] [tinyint] NOT NULL,
	[situacao] [char](1) NULL,
 CONSTRAINT [pk_produto] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UN_nome_produto] UNIQUE NONCLUSTERED 
(
	[nome] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (1, N'Chai', NULL, N'10 caixas x 20 pacotes', 18.0000, 12.0000, 39, 10, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (2, N'Chang', NULL, N'24 garrafas de 12oz', 19.0000, 13.0000, 17, 25, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (3, N'Aniseed Syrup', NULL, N'12 garrafas de 550ml', 10.0000, 5.0000, 13, 25, 2, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (4, N'Chef Anton''s Cajun Seasoning            ', N'Condimentos Cajun Chef Anton''s               ', N'48 frascos de 170 g           ', 26.4000, 20.0200, 53, 5, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (5, N'Chef Anton''s Gumbo Mix                  ', N'Sopa de quiabo com galinha Chef Anton''s      ', N'36 caixas                     ', 20.5752, 19.4285, 0, 10, 6, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (6, N'Grandma''s Boysenberry Spread            ', N'Pasta de amora Grandma''s                     ', N'12 frascos de 226 g           ', 30.0000, 21.2500, 120, 25, 4, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', NULL, N'12 pacotes de 1lb', 30.0000, 22.5600, 15, 10, 7, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (8, N'Northwoods Cranberry Sauce', NULL, N'12 vidros de 12oz', 40.0000, 32.6500, 6, 0, 2, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (9, N'Mishi Kobe Niku', NULL, N'18 pacotes de 500g', 97.0000, 81.0000, 29, 0, 6, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (10, N'Ikura', NULL, N'12 vidros de 200ml', 31.0000, 25.0000, 31, 0, 8, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (11, N'Queso Cabrales                          ', N'Queijo de cabra                              ', N'pacote de 1 kg.               ', 15.3317, 19.1100, 22, 10, 6, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (12, N'Queso Manchego La Pastora', NULL, N'10 pacotes de 500g', 38.0000, 30.0000, 86, 0, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (13, N'Konbu                                   ', N'Algas Kelp                                   ', N'caixa de 2 kg                 ', 7.2000, 5.4600, 24, 5, 8, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (14, N'Tofu                                    ', N'Coalho de feijão                             ', N'40 pacotes de 100 g.          ', 27.9000, 21.1575, 35, 10, 4, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (15, N'Genen Shouyu', NULL, N'24 garrafas de 250ml', 15.5000, 12.2000, 39, 5, 2, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (16, N'Pavlova                                 ', N'Merengue Pavlova                             ', N'32 caixas de 500 g            ', 16.3332, 15.8795, 29, 10, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (17, N'Alice Mutton', NULL, N'20 latas de 1kg', 39.0000, 35.0000, 0, 2, 6, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (18, N'Carnarvon Tigers', NULL, N'pacote de 16kg', 62.5000, 50.0000, 42, 0, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (19, N'Teatime Chocolate Biscuits              ', N'Biscoitos de chocolate                       ', N'10 caixas x 12 unidades       ', 11.0400, 8.3720, 25, 5, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (20, N'Sir Rodney''s Marmalade', NULL, N'30 caixas para presente', 81.0000, 72.0000, 40, 0, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (21, N'Sir Rodney''s Scones                     ', N'Pão-de-ló Sir Rodney''s                       ', N'24 pacotes x 4 unidades       ', 15.8400, 9.1000, 3, 10, 5, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (22, N'Gustaf''s Knäckebröd                     ', N'Pão fresco Gustaf''s Rye                      ', N'24 pacotes de 500 g.          ', 25.2000, 19.1100, 104, 25, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (23, N'Tunnbröd                                ', N'Pão em fatias finas                          ', N'12 pacotes de 250 g.          ', 10.8000, 8.1900, 61, 25, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (24, N'Guaraná Fantástica                      ', N'Refrigerante Guaraná Fantástica              ', N'12 latas de 355 ml            ', 5.4000, 4.0950, 20, 10, 1, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme                 ', N'Pasta de chocolate com amendoim NuNuCa       ', N'20 frascos de 450 g           ', 16.8000, 12.7400, 76, 30, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (26, N'Gumbär Gummibärchen', NULL, N'100 sacos de 250g', 31.2300, 25.0000, 15, 0, 3, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (27, N'Schoggi Schokolade', NULL, N'100 unidades de 100g', 43.9000, 32.4000, 49, 30, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (28, N'Rössle Sauerkraut', NULL, N'25 latas de 825g', 45.6000, 34.8000, 26, 0, 7, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (29, N'Thüringer Rostbratwurst', NULL, N'50 pacotes x 30 salsichas', 123.7900, 100.0000, 0, 0, 6, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (30, N'Nord-Ost Matjeshering                   ', N'Arenque branco Nord-Ost                      ', N'10 frascos de 200 g           ', 18.9017, 22.0065, 10, 15, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (31, N'Gorgonzola Telino                       ', N'Gorgonzola Telino                            ', N'12 pacotes de 100 g           ', 15.4440, 11.3750, 0, 10, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (32, N'Mascarpone Fabioli', NULL, N'24 pacotes de 200g', 32.0000, 26.0000, 9, 25, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (33, N'Geitost                                 ', N'Queijo de cabra                              ', N'50 pacotes de 500 g           ', 3.0000, 2.2750, 112, 20, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (34, N'Sasquatch Ale                           ', N'Ale Sasquatch                                ', N'24 garrafas de 283 g          ', 16.8000, 12.7400, 111, 15, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (35, N'Steeleye Stout                          ', N'Cerveja preta Steeleye                       ', N'24 garrafas de 283 g          ', 16.8480, 16.3800, 20, 15, 1, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (36, N'Inlagd Sill                             ', N'Arenque em conservas                         ', N'24 frascos de 250 g           ', 22.8000, 17.2900, 112, 20, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (37, N'Gravad lax                              ', N'Gravad Lox                                   ', N'12 pacotes de 500 g.          ', 18.9821, 22.1000, 11, 10, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (38, N'Côte de Blaye', NULL, N'12 garrafas de 75cl', 263.5000, 200.0000, 17, 15, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (39, N'Chartreuse verte                        ', N'Green Chartreuse (Licor)                     ', N'750 cc por garrafa peq.       ', 21.6000, 16.3800, 69, 5, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (40, N'Boston Crab Meat                        ', N'Carne de siri Boston                         ', N'24 latas de 113 g             ', 22.0800, 16.7440, 123, 30, 8, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (41, N'Jack''s New England Clam Chowder         ', N'Jack''s New England Clam Chowder              ', N'12 latas de 283 g             ', 11.5800, 8.7815, 85, 10, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (42, N'Singaporean Hokkien Fried Mee           ', N'Macarrão de Cingapura                        ', N'32 pacotes de 1 kg.           ', 16.8000, 12.7400, 26, 10, 5, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (43, N'Ipoh Coffee', NULL, N'16 latas de 500g', 46.0000, 35.0000, 17, 25, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (44, N'Gula Malacca                            ', N'Açúcar mascavo de Malaca                     ', N'20 sacos de 2 kg              ', 14.2001, 17.6995, 27, 15, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (45, N'Rogede sild                             ', N'Arenque defumado                             ', N'pacote de 1k                  ', 15.0480, 8.6450, 5, 10, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (46, N'Spegesild                               ', N'Arenque salgado                              ', N'4 pacotes de 450 g            ', 14.4000, 10.9200, 95, 15, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (47, N'Zaanse koeken                           ', N'Biscoitos Zaanse                             ', N'10 caixas de 113 g            ', 11.4000, 8.6450, 36, 10, 5, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (48, N'Chocolade                               ', N'Chocolate holandês                           ', N'10 pacotes                    ', 29.9880, 11.6025, 15, 25, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (49, N'Maxilaku                                ', N'Licorice                                     ', N'24 pacotes de 50 g            ', 28.6191, 18.2000, 10, 15, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (50, N'Valkoinen suklaa                        ', N'Chocolate branco                             ', N'12 barras de 100 g            ', 19.5000, 14.7875, 65, 30, 3, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (51, N'Manjimup Dried Apples', NULL, N'50 pacotes de 300g', 53.0000, 43.0000, 20, 10, 7, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (52, N'Filo Mix                                ', N'Mistura para massa de pão grego              ', N'16 caixas de 2 kg             ', 8.4000, 6.3700, 38, 25, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (53, N'Perth Pasties', NULL, N'48 unidades', 32.8000, 24.0000, 0, 0, 6, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (54, N'Tourtière                               ', N'Torta de carne de porco                      ', N'16 tortas                     ', 8.9400, 6.7795, 21, 10, 6, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (55, N'Pâté chinois                            ', N'Torta Shepard''s                              ', N'24 caixas x 2 tortas          ', 28.8000, 21.8400, 115, 20, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (56, N'Gnocchi di nonna Alice', NULL, N'24 pacotes de 250g', 38.0000, 30.0000, 21, 30, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (57, N'Ravioli Angelo                          ', N'Ravioli Angelo                               ', N'24 pacotes de 250 g           ', 23.4000, 17.7450, 36, 20, 5, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (58, N'Escargots de Bourgogne                  ', N'Escargots de Borgonha                        ', N'24 unidades                   ', 15.9000, 12.0575, 62, 20, 8, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (59, N'Raclette Courdavault', NULL, N'pacote de 5kg', 55.0000, 47.0000, 79, 0, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (60, N'Camembert Pierrot', NULL, N'15 unidades de 300g', 34.0000, 26.0000, 19, 0, 4, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (61, N'Sirop d''érable                          ', N'Melado                                       ', N'24 garrafas de 500 m          ', 29.0700, 24.2250, 113, 25, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (62, N'Tarte au sucre', NULL, N'48 unidades', 49.3000, 40.0000, 17, 0, 3, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (63, N'Vegie-spread', NULL, N'15 vidros de 625g', 43.9000, 35.0000, 24, 5, 2, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (64, N'Wimmers gute Semmelknödel', NULL, N'20 sacos x 4 unidades', 33.2500, 27.0000, 22, 30, 5, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', NULL, N'32 garrafas de 8oz', 21.0500, 16.0000, 76, 0, 2, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (66, N'Louisiana Hot Spiced Okra', NULL, N'24 vidros de 8oz', 17.0000, 14.0000, 4, 20, 2, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (67, N'Laughing Lumberjack Lager               ', N'Cerveja Laughing Lumberjack                  ', N'24 garrafas de 283 g          ', 16.8000, 12.7400, 52, 10, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (68, N'Scottish Longbreads                     ', N'Bengalas escocesas                           ', N'10 caixas x 8 unidades        ', 15.4440, 11.3750, 6, 10, 5, N'S')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (69, N'Gudbrandsdalsost', NULL, N'pacote de 10kg', 36.0000, 29.0000, 26, 15, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (70, N'Outback Lager                           ', N'Cerveja Outback                              ', N'24 garrafas de 355 m          ', 27.5184, 13.6500, 15, 30, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (71, N'Flotemysost                             ', N'Requeijão Flotemys                           ', N'10 pacotes de 500 g           ', 15.6967, 19.5650, 26, 10, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (72, N'Mozzarella di Giovanni', NULL, N'24 pacotes de 200g', 34.8000, 27.0000, 14, 0, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (73, N'Röd Kaviar                              ', N'Caviar vermelho                              ', N'24 frascos de 150             ', 18.0000, 13.6500, 101, 5, 8, N'D')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (74, N'Longlife Tofu                           ', N'Coalho de feijão Longlife                    ', N'pacote de 5 kg                ', 15.8400, 9.1000, 4, 10, 4, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (75, N'Rhönbräu Klosterbier                    ', N'Cerveja Rhönbräu                             ', N'24 garrafas de 0,5 l          ', 9.3000, 7.0525, 125, 25, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (76, N'Lakkalikööri', NULL, N'500ml', 18.0000, 14.0000, 57, 20, 1, N'N')
INSERT [dbo].[produto] ([codigo], [nome], [descricao], [apresent], [venda], [custo], [quantest], [estmin], [tipo], [situacao]) VALUES (77, N'Original Frankfurter grüne Soße', NULL, N'12 caixas', 13.0000, 10.0000, 32, 15, 2, N'N')
/****** Object:  Table [dbo].[cliente]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[codigo] [char](5) NOT NULL,
	[nome] [varchar](40) NOT NULL,
	[tipo] [char](1) NOT NULL,
	[contato] [varchar](30) NULL,
	[cargo] [varchar](30) NULL,
	[endereco] [varchar](60) NOT NULL,
	[cidade] [smallint] NOT NULL,
	[cep] [varchar](10) NULL,
	[fone] [varchar](16) NULL,
	[fax] [varchar](16) NULL,
	[obs] [text] NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ALFKI', N'Alfreds Futterkiste                     ', N'J', N'Maria Anders                  ', N'Representante de Vendas       ', N'Obere Str. 57                                               ', 13, N'12209     ', N'030-0074321     ', N'030-0076545     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ANATR', N'Ana Trujillo Sandoza                    ', N'F', N'Ana Trujillo                  ', N'Proprietário                  ', N'Avda. de la Constitución 2222                               ', 14, N'05021     ', N'(5) 555-4729    ', N'(5) 555-3745    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ANTON', N'Antonio Moreno Taquería                 ', N'F', N'Antonio Moreno                ', N'Proprietário                  ', N'Mataderos  2312                                             ', 14, N'05023     ', N'(5) 555-3932    ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'AROUT', N'Around the Horn                         ', N'J', N'Thomas Hardy                  ', N'Representante de Vendas       ', N'120 Hanover Sq.                                             ', 15, N'WA1 1DP   ', N'(171) 555-7788  ', N'(171) 555-6750  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ARTRA', N'Armandu''s Tratoria                      ', N'J', N'Armando Nicopoulus Papulus    ', N'Proprietário                  ', N'Trajanette Fubbica, 745                                     ', 90, N'9887699   ', N'(43)789-5432    ', N'(43)897-9233    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'BERGS', N'Berglunds snabbköp                      ', N'J', N'Christina Berglund            ', N'Administrador de Pedidos      ', N'Berguvsvägen  8                                             ', 16, N'S-958 22  ', N'0921-12 34 65   ', N'0921-12 34 67   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'BLAUS', N'Blauer See Delikatessen                 ', N'J', N'Hanna Moos                    ', N'Representante de Vendas       ', N'Forsterstr. 57                                              ', 17, N'68306     ', N'0621-08460      ', N'0621-08924      ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'BLONP', N'Blondel père et fils                    ', N'J', N'Frédérique Citeaux            ', N'Gerente de Marketing          ', N'24, place Kléber                                            ', 18, N'67000     ', N'88.60.15.31     ', N'88.60.15.32     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'BOTTM', N'Bottom-Dollar Markets                   ', N'J', N'Elizabeth Lincoln             ', N'Gerente Financeiro            ', N'23 Tsawassen Blvd.                                          ', 21, N'T2F 8M4   ', N'(604) 555-4729  ', N'(604) 555-3745  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'BSBEV', N'B''s Beverages                           ', N'J', N'Victoria Ashworth             ', N'Representante de Vendas       ', N'Fauntleroy Circus                                           ', 15, N'EC2 5NT   ', N'(171) 555-1212  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'CACTU', N'Cactus Comidas para llevar              ', N'J', N'Patricio Simpson              ', N'Agente de Vendas              ', N'Cerrito 333                                                 ', 22, N'1010      ', N'(1) 135-5555    ', N'(1) 135-4892    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'CENTC', N'Centro comercial Moctezuma              ', N'J', N'Francisco Chang               ', N'Gerente de Marketing          ', N'Sierras de Granada 9993                                     ', 14, N'05022     ', N'(5) 555-3392    ', N'(5) 555-7293    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'CHOPS', N'Chop-suey Chinese                       ', N'J', N'Yang Wang                     ', N'Proprietário                  ', N'Hauptstr. 29                                                ', 23, N'3012      ', N'0452-076545     ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'COMMI', N'Comércio Mineiro                        ', N'J', N'Pedro Afonso                  ', N'Assessor de Vendas            ', N'Av. dos Lusíadas, 23                                        ', 4, N'05432-043 ', N'(11) 555-7647   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'CONSH', N'Consolidated Holdings                   ', N'J', N'Elizabeth Brown               ', N'Representante de Vendas       ', N'Berkeley Gardens, 12  Brewery                               ', 15, N'WX1 6LT   ', N'(171) 555-2282  ', N'(171) 555-9199  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'DIEWA', N'Die Wandernde Kuh                       ', N'J', N'Rita Müller                   ', N'Representante de Vendas       ', N'Adenauerallee 900                                           ', 74, N'70563     ', N'0711-020361     ', N'0711-035428     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'DRACD', N'Drachenblut Delikatessen                ', N'J', N'Sven Ottlieb                  ', N'Administrador de Pedidos      ', N'Walserweg 21                                                ', 24, N'52066     ', N'0241-039123     ', N'0241-059428     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'EASTC', N'Eastern Connection                      ', N'J', N'Ann Devon                     ', N'Agente de Vendas              ', N'35 King George                                              ', 15, N'WX3 6FW   ', N'(171) 555-0297  ', N'(171) 555-3373  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ERNSH', N'Ernst Handel                            ', N'J', N'Roland Mendel                 ', N'Gerente de Vendas             ', N'Kirchgasse 6                                                ', 26, N'8010      ', N'7675-3425       ', N'7675-3426       ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FAMIA', N'Familia Arquibaldo                      ', N'J', N'Aria Cruz                     ', N'Assistente de Marketing       ', N'Rua Orós, 92                                                ', 4, N'05442-030 ', N'(11) 555-9857   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FELIP', N'Felipe Izquierdo                        ', N'F', N'Felipe Izquierdo              ', N'Proprietário                  ', N'Ave. 5 de Mayo Porlamar                                     ', 49, N'4980      ', N'(8) 34-56-12    ', N'(8) 34-93-93    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FOLIG', N'Folies gourmandes                       ', N'J', N'Martine Rancé                 ', N'Assistente do Agente de Vendas', N'184, chaussée de Tournai                                    ', 27, N'59000     ', N'20.16.10.16     ', N'20.16.10.17     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FRANK', N'Frankenversand                          ', N'J', N'Peter Franken                 ', N'Gerente de Marketing          ', N'Berliner Platz 43                                           ', 29, N'80805     ', N'089-0877310     ', N'089-0877451     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FRANR', N'France restauration                     ', N'J', N'Carine Schmitt                ', N'Gerente de Marketing          ', N'54, rue Royale                                              ', 25, N'44000     ', N'40.32.21.21     ', N'40.32.21.20     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FRANS', N'Franchi S.p.A.                          ', N'J', N'Paolo Accorti                 ', N'Representante de Vendas       ', N'Via Monte Bianco 34                                         ', 30, N'10100     ', N'011-4988260     ', N'011-4988261     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'FURIB', N'Furia Bacalhau e Frutos do Mar          ', N'J', N'Lino Rodriguez                ', N'Gerente de Vendas             ', N'Jardim das rosas n. 32                                      ', 32, N'1675      ', N'(1) 354-2534    ', N'(1) 354-2535    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'GALED', N'Galería del gastrónomo                  ', N'J', N'Eduardo Saavedra              ', N'Gerente de Marketing          ', N'Rambla de Cataluña, 23                                      ', 33, N'08022     ', N'(93) 203 4560   ', N'(93) 203 4561   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'GODOS', N'Godos Cocina Típica                     ', N'J', N'José Pedro Freyre             ', N'Gerente de Vendas             ', N'C/ Romero, 33                                               ', 34, N'41101     ', N'(95) 555 82 82  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'GOURL', N'Gourmet Lanchonetes                     ', N'J', N'André Fonseca                 ', N'Assessor de Vendas            ', N'Av. Brasil, 442                                             ', 9, N'04876-786 ', N'(11) 555-9482   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'GREAL', N'Great Lakes Food Market                 ', N'J', N'Howard Snyder                 ', N'Gerente de Marketing          ', N'2732 Baker Blvd.                                            ', 35, N'97403     ', N'(503) 555-7555  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'GROSR', N'Grosella Restaurante                    ', N'J', N'Manuel Pereira                ', N'Proprietário                  ', N'5ª Ave. Los Palos Grandes                                   ', 36, N'1081      ', N'(2) 283-2951    ', N'(2) 283-3397    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'HANAR', N'Hanari Carnes                           ', N'J', N'Mario Pontes                  ', N'Gerente Financeiro            ', N'Rua do Paço, 67                                             ', 3, N'05454-876 ', N'(21) 555-0091   ', N'(21) 555-8765   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'HENRP', N'Henriette Pfalzheim                     ', N'F', N'Henriette Pfalzheim           ', N'Proprietário                  ', N'Mehrheimerstr. 369                                          ', 56, N'50739     ', N'0221-0644327    ', N'0221-0765721    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'HILAA', N'HILARIÓN-Abastos                        ', N'J', N'Carlos Hernández              ', N'Representante de Vendas       ', N'Carrera 22 con Ave. Carlos Soublette #8-35                  ', 37, N'5022      ', N'(5) 555-1340    ', N'(5) 555-1948    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'HUNGC', N'Hungry Coyote Import Store              ', N'J', N'Yoshi Latimer                 ', N'Representante de Vendas       ', N'City Center Plaza, 516 Main St.                             ', 38, N'97827     ', N'(503) 555-6874  ', N'(503) 555-2376  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'HUNGO', N'Hungry Owl All-Night Grocers            ', N'J', N'Patricia McKenna              ', N'Assessor de Vendas            ', N'8 Johnstown Road                                            ', 39, N'12359 LP  ', N'2967 542        ', N'2967 3333       ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ISLAT', N'Island Trading                          ', N'J', N'Helen Bennett                 ', N'Gerente de Marketing          ', N'Garden House Crowther Way                                   ', 89, N'PO31 7PJ  ', N'(198) 555-8888  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'JAIYO', N'Jaime Yorres                            ', N'F', N'Jaime Yorres                  ', N'Proprietário                  ', N'87 Polk St. Suite 5                                         ', 47, N'94117     ', N'(415) 555-5938  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'JANLA', N'Janine Labrune                          ', N'F', N'Janine Labrune                ', N'Proprietário                  ', N'67, rue des Cinquante Otages                                ', 25, N'44000     ', N'40.67.88.88     ', N'40.67.89.89     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'JYTPE', N'Jytte Petersen                          ', N'F', N'Jytte Petersen                ', N'Proprietário                  ', N'Vinbæltet 34                                                ', 65, N'1734      ', N'31 12 34 56     ', N'31 13 35 57     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'KOENE', N'Koniglish Essen                         ', N'J', N'Philip Cramer                 ', N'Assessor de Vendas            ', N'Maubelstr. 90                                               ', 41, N'14776     ', N'0555-09876      ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LACOR', N'La corne d''abondance                    ', N'J', N'Daniel Tonini                 ', N'Representante de Vendas       ', N'67, avenue de l''Europe                                      ', 42, N'78000     ', N'30.59.84.10     ', N'30.59.85.11     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LAMAI', N'La maison d''Asie                        ', N'J', N'Annette Roulet                ', N'Gerente de Vendas             ', N'1 rue Alsace-Lorraine                                       ', 43, N'31000     ', N'61.77.61.10     ', N'61.77.61.11     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LAUGB', N'Laughing Bacchus Wine Cellars           ', N'J', N'Yoshi Tannamuri               ', N'Assistente de Marketing       ', N'1900 Oak St.                                                ', 44, N'V3F 2K1   ', N'(604) 555-3392  ', N'(604) 555-7293  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LAULE', N'Laurence Lebihan                        ', N'F', N'Laurence Lebihan              ', N'Proprietário                  ', N'12, rue des Bouchers                                        ', 20, N'13008     ', N'91.24.45.40     ', N'91.24.45.41     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LAZYK', N'Lazy K Kountry Store                    ', N'J', N'John Steel                    ', N'Gerente de Marketing          ', N'12 Orchestra Terrace                                        ', 45, N'99362     ', N'(509) 555-7969  ', N'(509) 555-6221  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LEHMS', N'Lehmanns Marktstand                     ', N'J', N'Renate Messner                ', N'Representante de Vendas       ', N'Magazinweg 7                                                ', 46, N'60528     ', N'069-0245984     ', N'069-0245874     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LILAS', N'LILA-Supermercado                       ', N'J', N'Carlos González               ', N'Gerente Financeiro            ', N'Carrera 52 con Ave. Bolívar #65-98 Llano Largo              ', 48, N'3508      ', N'(9) 331-6954    ', N'(9) 331-7256    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'LONEP', N'Lonesome Pine Restaurant                ', N'J', N'Fran Wilson                   ', N'Gerente de Vendas             ', N'89 Chiaroscuro Rd.                                          ', 50, N'97219     ', N'(503) 555-9573  ', N'(503) 555-9646  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MAGAA', N'Magazzini Alimentari Riuniti            ', N'J', N'Giovanni Rovelli              ', N'Gerente de Marketing          ', N'Via Ludovico il Moro 22                                     ', 51, N'24100     ', N'035-640230      ', N'035-640231      ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MAISD', N'Maison Dewey                            ', N'J', N'Catherine Dewey               ', N'Agente de Vendas              ', N'Rue Joseph-Bens 532                                         ', 52, N'B-1180    ', N'(02) 201 24 67  ', N'(02) 201 24 68  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MARLA', N'Maria Larsson                           ', N'F', N'Maria Larsson                 ', N'Proprietário                  ', N'Åkergatan 24                                                ', 28, N'S-844 67  ', N'0695-34 67 21   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MARSO', N'Martín Sommer                           ', N'F', N'Martín Sommer                 ', N'Proprietário                  ', N'C/ Araquil, 67                                              ', 19, N'28023     ', N'(91) 555 22 82  ', N'(91) 555 91 99  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MEREP', N'Mère Paillarde                          ', N'J', N'Jean Fresnière                ', N'Assistente de Marketing       ', N'43 rue St. Laurent                                          ', 53, N'H1J 1C3   ', N'(514) 555-8054  ', N'(514) 555-8055  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MIGAN', N'Miguel Angel Paolino                    ', N'F', N'Miguel Angel Paolino          ', N'Proprietário                  ', N'Avda. Azteca 123                                            ', 14, N'05033     ', N'(5) 555-2933    ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'MORGK', N'Morgenstern Gesundkost                  ', N'J', N'Alexander Feuer               ', N'Assistente de Marketing       ', N'Heerstr. 22                                                 ', 54, N'04179     ', N'0342-023176     ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'NORTS', N'North/South                             ', N'J', N'Simon Crowther                ', N'Assessor de Vendas            ', N'South House, 300 Queensbridge                               ', 15, N'SW7 1RZ   ', N'(171) 555-7733  ', N'(171) 555-2530  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'OCEAN', N'Océano Atlántico Ltda.                  ', N'J', N'Yvonne Moncada                ', N'Agente de Vendas              ', N'Ing. Gustavo Moncada 8585, Piso 20-A                        ', 22, N'1010      ', N'(1) 135-5333    ', N'(1) 135-5535    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'OLDWO', N'Old World Delicatessen                  ', N'J', N'Rene Phillips                 ', N'Representante de Vendas       ', N'2743 Bering St.                                             ', 55, N'99508     ', N'(907) 555-7584  ', N'(907) 555-2880  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'PERIC', N'Pericles Comidas clásicas               ', N'J', N'Guillermo Fernández           ', N'Representante de Vendas       ', N'Calle Dr. Jorge Cash 321                                    ', 14, N'05033     ', N'(5) 552-3745    ', N'(5) 545-3745    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'PICCO', N'Piccolo und mehr                        ', N'J', N'Georg Pipps                   ', N'Gerente de Vendas             ', N'Geislweg 14                                                 ', 58, N'5020      ', N'6562-9722       ', N'6562-9723       ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'PRINI', N'Princesa Isabel Vinhos                  ', N'J', N'Isabel de Castro              ', N'Representante de Vendas       ', N'Estrada da saúde n. 58                                      ', 32, N'1756      ', N'(1) 356-5634    ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'QUEDE', N'Que Delícia                             ', N'J', N'Bernardo Batista              ', N'Gerente Financeiro            ', N'Rua da Panificadora, 12                                     ', 3, N'02389-673 ', N'(21) 555-4252   ', N'(21) 555-4545   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'QUEEN', N'Queen Cozinha                           ', N'J', N'Lúcia Carvalho                ', N'Assistente de Marketing       ', N'Alameda dos Canàrios, 891                                   ', 4, N'05487-020 ', N'(11) 555-1189   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'QUICK', N'QUICK-Stop                              ', N'J', N'Horst Kloss                   ', N'Gerente Financeiro            ', N'Taucherstraße 10                                            ', 59, N'01307     ', N'0372-035188     ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'RANCH', N'Rancho grande                           ', N'J', N'Sergio Gutiérrez              ', N'Representante de Vendas       ', N'Av. del Libertador 900                                      ', 22, N'1010      ', N'(1) 123-5555    ', N'(1) 123-5556    ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'RATTC', N'Rattlesnake Canyon Grocery              ', N'J', N'Paula Wilson                  ', N'Assistente do Repr. de Vendas ', N'2817 Milton Dr.                                             ', 60, N'87110     ', N'(505) 555-5939  ', N'(505) 555-3620  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'REGGC', N'Reggiani Caseifici                      ', N'J', N'Maurizio Moroni               ', N'Assessor de Vendas            ', N'Strada Provinciale 124                                      ', 61, N'42100     ', N'0522-556721     ', N'0522-556722     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'RICAR', N'Ricardo Adocicados                      ', N'J', N'Janete Limeira                ', N'Assistente do Agente de Vendas', N'Av. Copacabana, 267                                         ', 3, N'02389-890 ', N'(21) 555-3412   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'RICSU', N'Richter Supermarkt                      ', N'J', N'Michael Holz                  ', N'Gerente de Vendas             ', N'Grenzacherweg 237                                           ', 62, N'1203      ', N'0897-034214     ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ROMEY', N'Romero y tomillo                        ', N'J', N'Alejandra Camino              ', N'Gerente Financeiro            ', N'Gran Vía, 1                                                 ', 19, N'28001     ', N'(91) 745 6200   ', N'(91) 745 6210   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SANTG', N'Santé Gourmet                           ', N'J', N'Jonas Bergulfsen              ', N'Proprietário                  ', N'Erling Skakkes gate 78                                      ', 63, N'4110      ', N'07-98 92 35     ', N'07-98 92 47     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SAVEA', N'Save-a-lot Markets                      ', N'J', N'Jose Pavarotti                ', N'Representante de Vendas       ', N'187 Suffolk Ln.                                             ', 64, N'83720     ', N'(208) 555-8097  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SEVES', N'Seven Seas Imports                      ', N'J', N'Hari Kumar                    ', N'Gerente de Vendas             ', N'90 Wadhurst Rd.                                             ', 15, N'OX15 4NB  ', N'(171) 555-1717  ', N'(171) 555-5646  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SPECD', N'Spécialités du monde                    ', N'J', N'Dominique Perrier             ', N'Gerente de Marketing          ', N'25, rue Lauriston                                           ', 57, N'75016     ', N'(1) 47.55.60.10 ', N'(1) 47.55.60.20 ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SPLIR', N'Split Rail Beer & Ale                   ', N'J', N'Art Braunschweiger            ', N'Gerente de Vendas             ', N'P.O. Box 555                                                ', 66, N'82520     ', N'(307) 555-4680  ', N'(307) 555-6525  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'SUPRD', N'Suprêmes délices                        ', N'J', N'Pascale Cartrain              ', N'Gerente Financeiro            ', N'Boulevard Tirou, 255                                        ', 67, N'B-6000    ', N'(071) 23 67 22 2', N'(071) 23 67 22 2', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'THEBI', N'The Big Cheese                          ', N'J', N'Liz Nixon                     ', N'Gerente de Marketing          ', N'89 Jefferson Way, Suite 2                                   ', 50, N'97201     ', N'(503) 555-3612  ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'THECR', N'The Cracker Box                         ', N'J', N'Liu Wong                      ', N'Assistente de Marketing       ', N'55 Grizzly Peak Rd.                                         ', 68, N'59801     ', N'(406) 555-5834  ', N'(406) 555-8083  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'TOMSP', N'Toms Spezialitäten                      ', N'J', N'Karin Josephs                 ', N'Gerente de Marketing          ', N'Luisenstr. 48                                               ', 69, N'44087     ', N'0251-031259     ', N'0251-035695     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'TRADH', N'Tradição Hipermercados                  ', N'J', N'Anabela Domingues             ', N'Representante de Vendas       ', N'Av. Inês de Castro, 414                                     ', 4, N'05634-030 ', N'(11) 555-2167   ', N'(11) 555-2168   ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'TRAIH', N'Trail''s Head Gourmet Provisioners       ', N'J', N'Helvetius Nagy                ', N'Assessor de Vendas            ', N'722 DaVinci Blvd.                                           ', 70, N'98034     ', N'(206) 555-8257  ', N'(206) 555-2174  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'VAFFE', N'Vaffeljernet                            ', N'J', N'Palle Ibsen                   ', N'Gerente de Vendas             ', N'Smagsløget 45                                               ', 71, N'8200      ', N'86 21 32 43     ', N'86 22 33 44     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'VICTE', N'Victuailles en stock                    ', N'J', N'Mary Saveley                  ', N'Agente de Vendas              ', N'2, rue du Commerce                                          ', 72, N'69004     ', N'78.32.54.86     ', N'78.32.54.87     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'VINET', N'Vins et alcools Chevalier               ', N'J', N'Paul Henriot                  ', N'Gerente Financeiro            ', N'59 rue de l''Abbaye                                          ', 73, N'51100     ', N'26.47.15.10     ', N'26.47.15.11     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'WARTH', N'Wartian Herkku                          ', N'J', N'Pirkko Koskitalo              ', N'Gerente Financeiro            ', N'Torikatu 38                                                 ', 75, N'90110     ', N'981-443655      ', N'981-443655      ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'WELLI', N'Wellington Importadora                  ', N'J', N'Paula Parente                 ', N'Gerente de Vendas             ', N'Rua do Mercado, 12                                          ', 76, N'08737-363 ', N'(14) 555-8122   ', NULL, NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'WHITC', N'White Clover Markets                    ', N'J', N'Karl Jablonski                ', N'Proprietário                  ', N'305 - 14th Ave. S. Suite 3B                                 ', 79, N'98128     ', N'(206) 555-4112  ', N'(206) 555-4115  ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'WILMK', N'Wilman Kala                             ', N'J', N'Matti Karttunen               ', N'Proprietário/Assist. Marketing', N'Keskuskatu 45                                               ', 77, N'21240     ', N'90-224 8858     ', N'90-224 8858     ', NULL)
INSERT [dbo].[cliente] ([codigo], [nome], [tipo], [contato], [cargo], [endereco], [cidade], [cep], [fone], [fax], [obs]) VALUES (N'ZBYSZ', N'Zbyszek Piestrzeniewicz                 ', N'F', N'Zbyszek Piestrzeniewicz       ', N'Proprietário                  ', N'ul. Filtrowa 68                                             ', 78, N'01-012    ', N'(26) 642-7012   ', N'(26) 642-7012   ', NULL)
/****** Object:  Table [dbo].[pedido]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pedido](
	[codigo] [smallint] NOT NULL,
	[cliente] [char](5) NOT NULL,
	[vendedor] [tinyint] NOT NULL,
	[datapedid] [smalldatetime] NOT NULL,
	[datafatura] [smalldatetime] NULL,
	[via] [char](1) NULL,
	[frete] [smallmoney] NULL,
 CONSTRAINT [pk_pedido] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10248, N'VINET', 5, CAST(0x89CF0000 AS SmallDateTime), CAST(0x89EB0000 AS SmallDateTime), N'M', 51.1604)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10249, N'TOMSP', 6, CAST(0x89D00000 AS SmallDateTime), CAST(0x89FA0000 AS SmallDateTime), N'T', 18.3438)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10251, N'VICTE', 3, CAST(0x89D30000 AS SmallDateTime), CAST(0x89EF0000 AS SmallDateTime), N'T', 65.3172)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10253, N'HANAR', 3, CAST(0x89D50000 AS SmallDateTime), CAST(0x89E30000 AS SmallDateTime), N'A', 91.9086)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10254, N'CHOPS', 5, CAST(0x89D60000 AS SmallDateTime), CAST(0x89F20000 AS SmallDateTime), N'T', 36.3084)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10256, N'WELLI', 3, CAST(0x89DA0000 AS SmallDateTime), CAST(0x89F60000 AS SmallDateTime), N'T', 22.0726)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10264, N'MARLA', 6, CAST(0x89E30000 AS SmallDateTime), CAST(0x89FF0000 AS SmallDateTime), N'M', 5.7986)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10265, N'BLONP', 2, CAST(0x89E40000 AS SmallDateTime), CAST(0x8A000000 AS SmallDateTime), N'A', 87.3424)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10269, N'WHITC', 5, CAST(0x89EA0000 AS SmallDateTime), CAST(0x89F80000 AS SmallDateTime), N'A', 7.2048)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10271, N'SPLIR', 6, CAST(0x89EB0000 AS SmallDateTime), CAST(0x8A070000 AS SmallDateTime), N'T', 7.1732)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10272, N'RATTC', 6, CAST(0x89EC0000 AS SmallDateTime), CAST(0x8A080000 AS SmallDateTime), N'T', 154.8874)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10273, N'QUICK', 3, CAST(0x89EF0000 AS SmallDateTime), CAST(0x8A0B0000 AS SmallDateTime), N'M', 120.1906)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10274, N'VINET', 6, CAST(0x89F00000 AS SmallDateTime), CAST(0x8A0C0000 AS SmallDateTime), N'A', 9.4958)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10277, N'MORGK', 2, CAST(0x89F30000 AS SmallDateTime), CAST(0x8A0F0000 AS SmallDateTime), N'A', 198.7166)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10280, N'BERGS', 2, CAST(0x89F80000 AS SmallDateTime), CAST(0x8A140000 AS SmallDateTime), N'A', 14.1884)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10283, N'LILAS', 3, CAST(0x89FA0000 AS SmallDateTime), CAST(0x8A160000 AS SmallDateTime), N'M', 133.9998)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10289, N'BSBEV', 7, CAST(0x8A040000 AS SmallDateTime), CAST(0x8A200000 AS SmallDateTime), N'M', 35.9766)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10291, N'QUEDE', 6, CAST(0x8A050000 AS SmallDateTime), CAST(0x8A210000 AS SmallDateTime), N'T', 10.1120)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10295, N'VINET', 2, CAST(0x8A0B0000 AS SmallDateTime), CAST(0x8A270000 AS SmallDateTime), N'T', 1.8170)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10296, N'LILAS', 6, CAST(0x8A0C0000 AS SmallDateTime), CAST(0x8A280000 AS SmallDateTime), N'A', 0.1896)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10297, N'BLONP', 5, CAST(0x8A0D0000 AS SmallDateTime), CAST(0x8A370000 AS SmallDateTime), N'T', 9.0692)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10298, N'HUNGO', 6, CAST(0x8A0E0000 AS SmallDateTime), CAST(0x8A2A0000 AS SmallDateTime), N'A', 265.7876)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10300, N'MAGAA', 2, CAST(0x8A120000 AS SmallDateTime), CAST(0x8A2E0000 AS SmallDateTime), N'T', 27.9344)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10303, N'GODOS', 7, CAST(0x8A140000 AS SmallDateTime), CAST(0x8A300000 AS SmallDateTime), N'A', 170.3714)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10307, N'LONEP', 2, CAST(0x8A1A0000 AS SmallDateTime), CAST(0x8A360000 AS SmallDateTime), N'T', 0.8848)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10308, N'ANATR', 7, CAST(0x8A1B0000 AS SmallDateTime), CAST(0x8A370000 AS SmallDateTime), N'M', 2.5438)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10309, N'HUNGO', 3, CAST(0x8A1C0000 AS SmallDateTime), CAST(0x8A380000 AS SmallDateTime), N'A', 74.7340)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10312, N'DIEWA', 2, CAST(0x8A200000 AS SmallDateTime), CAST(0x8A3C0000 AS SmallDateTime), N'T', 63.6108)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10313, N'QUICK', 2, CAST(0x8A210000 AS SmallDateTime), CAST(0x8A3D0000 AS SmallDateTime), N'T', 3.0968)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10317, N'LONEP', 6, CAST(0x8A270000 AS SmallDateTime), CAST(0x8A430000 AS SmallDateTime), N'A', 20.0502)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10319, N'MIGAN', 7, CAST(0x8A290000 AS SmallDateTime), CAST(0x8A450000 AS SmallDateTime), N'A', 101.9100)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10320, N'WARTH', 5, CAST(0x8A2A0000 AS SmallDateTime), CAST(0x8A380000 AS SmallDateTime), N'M', 54.6206)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10321, N'ISLAT', 3, CAST(0x8A2A0000 AS SmallDateTime), CAST(0x8A460000 AS SmallDateTime), N'T', 5.4194)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10322, N'PERIC', 7, CAST(0x8A2B0000 AS SmallDateTime), CAST(0x8A470000 AS SmallDateTime), N'M', 0.6320)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10327, N'MARLA', 2, CAST(0x8A320000 AS SmallDateTime), CAST(0x8A4E0000 AS SmallDateTime), N'A', 100.1088)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10330, N'LILAS', 3, CAST(0x8A370000 AS SmallDateTime), CAST(0x8A530000 AS SmallDateTime), N'A', 20.1450)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10332, N'MEREP', 3, CAST(0x8A380000 AS SmallDateTime), CAST(0x8A620000 AS SmallDateTime), N'T', 83.4872)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10333, N'WARTH', 5, CAST(0x8A390000 AS SmallDateTime), CAST(0x8A550000 AS SmallDateTime), N'M', 0.9322)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10335, N'HUNGO', 7, CAST(0x8A3D0000 AS SmallDateTime), CAST(0x8A590000 AS SmallDateTime), N'T', 66.5338)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10336, N'PRINI', 7, CAST(0x8A3E0000 AS SmallDateTime), CAST(0x8A5A0000 AS SmallDateTime), N'T', 24.5058)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10339, N'MEREP', 2, CAST(0x8A430000 AS SmallDateTime), CAST(0x8A5F0000 AS SmallDateTime), N'T', 24.7428)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10341, N'JYTPE', 7, CAST(0x8A440000 AS SmallDateTime), CAST(0x8A600000 AS SmallDateTime), N'M', 42.3124)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10345, N'QUICK', 2, CAST(0x8A4A0000 AS SmallDateTime), CAST(0x8A660000 AS SmallDateTime), N'A', 393.5148)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10346, N'RATTC', 3, CAST(0x8A4B0000 AS SmallDateTime), CAST(0x8A750000 AS SmallDateTime), N'M', 224.4864)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10349, N'SPLIR', 7, CAST(0x8A4E0000 AS SmallDateTime), CAST(0x8A6A0000 AS SmallDateTime), N'A', 13.6354)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10350, N'LAMAI', 6, CAST(0x8A510000 AS SmallDateTime), CAST(0x8A6D0000 AS SmallDateTime), N'T', 101.4202)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10352, N'FURIB', 3, CAST(0x8A520000 AS SmallDateTime), CAST(0x8A600000 AS SmallDateTime), N'M', 2.0540)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10353, N'PICCO', 7, CAST(0x8A530000 AS SmallDateTime), CAST(0x8A6F0000 AS SmallDateTime), N'A', 569.7954)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10355, N'AROUT', 6, CAST(0x8A550000 AS SmallDateTime), CAST(0x8A710000 AS SmallDateTime), N'A', 66.2810)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10356, N'DIEWA', 6, CAST(0x8A580000 AS SmallDateTime), CAST(0x8A740000 AS SmallDateTime), N'T', 58.0018)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10358, N'LAMAI', 5, CAST(0x8A5A0000 AS SmallDateTime), CAST(0x8A760000 AS SmallDateTime), N'A', 31.0312)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10359, N'SEVES', 5, CAST(0x8A5B0000 AS SmallDateTime), CAST(0x8A770000 AS SmallDateTime), N'A', 455.7194)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10362, N'MARSO', 3, CAST(0x8A5F0000 AS SmallDateTime), CAST(0x8A7B0000 AS SmallDateTime), N'A', 151.7432)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10365, N'ANTON', 3, CAST(0x8A610000 AS SmallDateTime), CAST(0x8A7D0000 AS SmallDateTime), N'T', 34.7600)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10367, N'VAFFE', 7, CAST(0x8A620000 AS SmallDateTime), CAST(0x8A7E0000 AS SmallDateTime), N'M', 21.4090)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10368, N'ERNSH', 2, CAST(0x8A630000 AS SmallDateTime), CAST(0x8A7F0000 AS SmallDateTime), N'T', 161.0810)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10370, N'CHOPS', 6, CAST(0x8A670000 AS SmallDateTime), CAST(0x8A830000 AS SmallDateTime), N'T', 1.8486)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10372, N'QUEEN', 5, CAST(0x8A680000 AS SmallDateTime), CAST(0x8A840000 AS SmallDateTime), N'A', 1407.4324)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10375, N'HUNGC', 3, CAST(0x8A6A0000 AS SmallDateTime), CAST(0x8A860000 AS SmallDateTime), N'T', 31.7896)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10378, N'MARLA', 5, CAST(0x8A6E0000 AS SmallDateTime), CAST(0x8A8A0000 AS SmallDateTime), N'M', 8.5952)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10379, N'QUEDE', 2, CAST(0x8A6F0000 AS SmallDateTime), CAST(0x8A8B0000 AS SmallDateTime), N'A', 71.1474)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10381, N'LILAS', 3, CAST(0x8A700000 AS SmallDateTime), CAST(0x8A8C0000 AS SmallDateTime), N'M', 12.6242)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10384, N'BERGS', 3, CAST(0x8A740000 AS SmallDateTime), CAST(0x8A900000 AS SmallDateTime), N'A', 266.4512)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10388, N'SEVES', 2, CAST(0x8A770000 AS SmallDateTime), CAST(0x8A930000 AS SmallDateTime), N'A', 55.0788)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10390, N'ERNSH', 6, CAST(0x8A7B0000 AS SmallDateTime), CAST(0x8A970000 AS SmallDateTime), N'A', 199.6804)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10391, N'DRACD', 3, CAST(0x8A7B0000 AS SmallDateTime), CAST(0x8A970000 AS SmallDateTime), N'M', 8.6110)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10392, N'PICCO', 2, CAST(0x8A7C0000 AS SmallDateTime), CAST(0x8A980000 AS SmallDateTime), N'M', 193.4868)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10395, N'HILAA', 6, CAST(0x8A7E0000 AS SmallDateTime), CAST(0x8A9A0000 AS SmallDateTime), N'A', 291.3678)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10397, N'PRINI', 5, CAST(0x8A7F0000 AS SmallDateTime), CAST(0x8A9B0000 AS SmallDateTime), N'A', 95.2108)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10398, N'SAVEA', 2, CAST(0x8A820000 AS SmallDateTime), CAST(0x8A9E0000 AS SmallDateTime), N'M', 140.8728)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10404, N'MAGAA', 2, CAST(0x8A860000 AS SmallDateTime), CAST(0x8AA20000 AS SmallDateTime), N'A', 246.4326)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10406, N'QUEEN', 7, CAST(0x8A8A0000 AS SmallDateTime), CAST(0x8AB40000 AS SmallDateTime), N'A', 170.7032)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10407, N'HENRP', 2, CAST(0x8A8A0000 AS SmallDateTime), CAST(0x8AA60000 AS SmallDateTime), N'T', 144.5384)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10409, N'OCEAN', 3, CAST(0x8A8C0000 AS SmallDateTime), CAST(0x8AA80000 AS SmallDateTime), N'A', 47.1314)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10410, N'BOTTM', 3, CAST(0x8A8D0000 AS SmallDateTime), CAST(0x8AA90000 AS SmallDateTime), N'M', 3.7920)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10413, N'LAMAI', 3, CAST(0x8A910000 AS SmallDateTime), CAST(0x8AAD0000 AS SmallDateTime), N'T', 151.1428)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10414, N'FAMIA', 2, CAST(0x8A910000 AS SmallDateTime), CAST(0x8AAD0000 AS SmallDateTime), N'M', 33.9384)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10415, N'HUNGC', 3, CAST(0x8A920000 AS SmallDateTime), CAST(0x8AAE0000 AS SmallDateTime), N'A', 0.3160)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10420, N'WELLI', 3, CAST(0x8A980000 AS SmallDateTime), CAST(0x8AB40000 AS SmallDateTime), N'A', 69.7096)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10422, N'FRANS', 2, CAST(0x8A990000 AS SmallDateTime), CAST(0x8AB50000 AS SmallDateTime), N'A', 4.7716)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10423, N'GOURL', 6, CAST(0x8A9A0000 AS SmallDateTime), CAST(0x8AA80000 AS SmallDateTime), N'M', 38.7100)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10424, N'MEREP', 7, CAST(0x8A9A0000 AS SmallDateTime), CAST(0x8AB60000 AS SmallDateTime), N'A', 585.5638)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10425, N'LAMAI', 6, CAST(0x8A9B0000 AS SmallDateTime), CAST(0x8AB70000 AS SmallDateTime), N'T', 12.5294)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10428, N'REGGC', 7, CAST(0x8A9F0000 AS SmallDateTime), CAST(0x8ABB0000 AS SmallDateTime), N'A', 17.5222)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10429, N'HUNGO', 3, CAST(0x8AA00000 AS SmallDateTime), CAST(0x8ACA0000 AS SmallDateTime), N'T', 89.4754)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10432, N'SPLIR', 3, CAST(0x8AA20000 AS SmallDateTime), CAST(0x8AB00000 AS SmallDateTime), N'T', 6.8572)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10433, N'PRINI', 3, CAST(0x8AA50000 AS SmallDateTime), CAST(0x8AC10000 AS SmallDateTime), N'M', 116.6514)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10434, N'MARLA', 3, CAST(0x8AA50000 AS SmallDateTime), CAST(0x8AC10000 AS SmallDateTime), N'T', 28.3136)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10436, N'BLONP', 3, CAST(0x8AA70000 AS SmallDateTime), CAST(0x8AC30000 AS SmallDateTime), N'A', 247.5228)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10438, N'TOMSP', 3, CAST(0x8AA80000 AS SmallDateTime), CAST(0x8AC40000 AS SmallDateTime), N'T', 13.0192)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10439, N'MEREP', 6, CAST(0x8AA90000 AS SmallDateTime), CAST(0x8AC50000 AS SmallDateTime), N'M', 6.4306)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10441, N'OLDWO', 3, CAST(0x8AAC0000 AS SmallDateTime), CAST(0x8AD60000 AS SmallDateTime), N'T', 115.3716)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10442, N'ERNSH', 3, CAST(0x8AAD0000 AS SmallDateTime), CAST(0x8AC90000 AS SmallDateTime), N'T', 75.7452)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10444, N'BERGS', 3, CAST(0x8AAE0000 AS SmallDateTime), CAST(0x8ACA0000 AS SmallDateTime), N'M', 5.5300)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10445, N'BERGS', 3, CAST(0x8AAF0000 AS SmallDateTime), CAST(0x8ACB0000 AS SmallDateTime), N'A', 14.6940)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10446, N'TOMSP', 6, CAST(0x8AB00000 AS SmallDateTime), CAST(0x8ACC0000 AS SmallDateTime), N'A', 23.1944)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10449, N'BLONP', 3, CAST(0x8AB40000 AS SmallDateTime), CAST(0x8AD00000 AS SmallDateTime), N'T', 84.2140)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10457, N'KOENE', 2, CAST(0x8ABB0000 AS SmallDateTime), CAST(0x8AD70000 AS SmallDateTime), N'A', 18.2806)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10458, N'SUPRD', 7, CAST(0x8ABC0000 AS SmallDateTime), CAST(0x8AD80000 AS SmallDateTime), N'M', 232.3548)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10462, N'CONSH', 2, CAST(0x8AC10000 AS SmallDateTime), CAST(0x8ADD0000 AS SmallDateTime), N'T', 9.7486)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10463, N'SUPRD', 5, CAST(0x8AC20000 AS SmallDateTime), CAST(0x8ADE0000 AS SmallDateTime), N'M', 23.3524)
GO
print 'Processed 100 total records'
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10468, N'KOENE', 3, CAST(0x8AC50000 AS SmallDateTime), CAST(0x8AE10000 AS SmallDateTime), N'M', 69.7096)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10471, N'BSBEV', 2, CAST(0x8AC90000 AS SmallDateTime), CAST(0x8AE50000 AS SmallDateTime), N'M', 72.0322)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10474, N'PERIC', 5, CAST(0x8ACB0000 AS SmallDateTime), CAST(0x8AE70000 AS SmallDateTime), N'T', 131.9142)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10477, N'PRINI', 5, CAST(0x8ACF0000 AS SmallDateTime), CAST(0x8AEB0000 AS SmallDateTime), N'T', 20.5716)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10478, N'VICTE', 2, CAST(0x8AD00000 AS SmallDateTime), CAST(0x8ADE0000 AS SmallDateTime), N'M', 7.5998)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10479, N'RATTC', 3, CAST(0x8AD10000 AS SmallDateTime), CAST(0x8AED0000 AS SmallDateTime), N'A', 1120.1410)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10480, N'FOLIG', 6, CAST(0x8AD20000 AS SmallDateTime), CAST(0x8AEE0000 AS SmallDateTime), N'T', 2.1330)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10483, N'WHITC', 7, CAST(0x8AD60000 AS SmallDateTime), CAST(0x8AF20000 AS SmallDateTime), N'T', 24.1424)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10484, N'BSBEV', 3, CAST(0x8AD60000 AS SmallDateTime), CAST(0x8AF20000 AS SmallDateTime), N'M', 10.8704)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10487, N'QUEEN', 2, CAST(0x8AD80000 AS SmallDateTime), CAST(0x8AF40000 AS SmallDateTime), N'T', 112.2906)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10489, N'PICCO', 6, CAST(0x8ADA0000 AS SmallDateTime), CAST(0x8AF60000 AS SmallDateTime), N'T', 8.3582)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10490, N'HILAA', 7, CAST(0x8ADD0000 AS SmallDateTime), CAST(0x8AF90000 AS SmallDateTime), N'A', 332.1002)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10492, N'BOTTM', 3, CAST(0x8ADE0000 AS SmallDateTime), CAST(0x8AFA0000 AS SmallDateTime), N'T', 99.3662)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10495, N'LAUGB', 3, CAST(0x8AE00000 AS SmallDateTime), CAST(0x8AFC0000 AS SmallDateTime), N'M', 7.3470)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10496, N'TRADH', 7, CAST(0x8AE10000 AS SmallDateTime), CAST(0x8AFD0000 AS SmallDateTime), N'T', 73.8966)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10497, N'LEHMS', 7, CAST(0x8AE10000 AS SmallDateTime), CAST(0x8AFD0000 AS SmallDateTime), N'T', 57.2118)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10500, N'LAMAI', 6, CAST(0x8AE60000 AS SmallDateTime), CAST(0x8B020000 AS SmallDateTime), N'T', 67.4344)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10502, N'PERIC', 2, CAST(0x8AE70000 AS SmallDateTime), CAST(0x8B030000 AS SmallDateTime), N'T', 109.5256)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10503, N'HUNGO', 6, CAST(0x8AE80000 AS SmallDateTime), CAST(0x8B040000 AS SmallDateTime), N'T', 26.4492)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10505, N'MEREP', 3, CAST(0x8AEB0000 AS SmallDateTime), CAST(0x8B070000 AS SmallDateTime), N'M', 11.2654)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10507, N'ANTON', 7, CAST(0x8AEC0000 AS SmallDateTime), CAST(0x8B080000 AS SmallDateTime), N'T', 74.9710)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10510, N'SAVEA', 6, CAST(0x8AEF0000 AS SmallDateTime), CAST(0x8B0B0000 AS SmallDateTime), N'M', 580.8554)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10512, N'FAMIA', 7, CAST(0x8AF20000 AS SmallDateTime), CAST(0x8B0E0000 AS SmallDateTime), N'T', 5.5774)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10513, N'DIEWA', 7, CAST(0x8AF30000 AS SmallDateTime), CAST(0x8B1D0000 AS SmallDateTime), N'A', 166.9270)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10514, N'ERNSH', 3, CAST(0x8AF30000 AS SmallDateTime), CAST(0x8B0F0000 AS SmallDateTime), N'T', 1248.1210)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10515, N'QUICK', 2, CAST(0x8AF40000 AS SmallDateTime), CAST(0x8B020000 AS SmallDateTime), N'A', 323.0626)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10516, N'HUNGO', 2, CAST(0x8AF50000 AS SmallDateTime), CAST(0x8B110000 AS SmallDateTime), N'M', 99.1924)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10517, N'NORTS', 3, CAST(0x8AF50000 AS SmallDateTime), CAST(0x8B110000 AS SmallDateTime), N'M', 50.6706)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10519, N'CHOPS', 6, CAST(0x8AF90000 AS SmallDateTime), CAST(0x8B150000 AS SmallDateTime), N'M', 144.9808)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10520, N'SANTG', 7, CAST(0x8AFA0000 AS SmallDateTime), CAST(0x8B160000 AS SmallDateTime), N'T', 21.1246)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10523, N'SEVES', 7, CAST(0x8AFC0000 AS SmallDateTime), CAST(0x8B180000 AS SmallDateTime), N'T', 122.6554)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10527, N'QUICK', 7, CAST(0x8B000000 AS SmallDateTime), CAST(0x8B1C0000 AS SmallDateTime), N'M', 66.2020)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10528, N'GREAL', 6, CAST(0x8B010000 AS SmallDateTime), CAST(0x8B0F0000 AS SmallDateTime), N'T', 5.2930)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10529, N'MAISD', 5, CAST(0x8B020000 AS SmallDateTime), CAST(0x8B1E0000 AS SmallDateTime), N'T', 105.3702)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10530, N'PICCO', 3, CAST(0x8B030000 AS SmallDateTime), CAST(0x8B1F0000 AS SmallDateTime), N'T', 535.9676)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10531, N'OCEAN', 7, CAST(0x8B030000 AS SmallDateTime), CAST(0x8B1F0000 AS SmallDateTime), N'T', 12.8296)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10532, N'EASTC', 7, CAST(0x8B040000 AS SmallDateTime), CAST(0x8B200000 AS SmallDateTime), N'M', 117.6468)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10536, N'LEHMS', 3, CAST(0x8B090000 AS SmallDateTime), CAST(0x8B250000 AS SmallDateTime), N'T', 93.0304)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10539, N'BSBEV', 6, CAST(0x8B0B0000 AS SmallDateTime), CAST(0x8B270000 AS SmallDateTime), N'M', 19.5288)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10540, N'QUICK', 3, CAST(0x8B0E0000 AS SmallDateTime), CAST(0x8B2A0000 AS SmallDateTime), N'A', 1592.0712)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10541, N'HANAR', 2, CAST(0x8B0E0000 AS SmallDateTime), CAST(0x8B2A0000 AS SmallDateTime), N'T', 108.4670)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10547, N'SEVES', 3, CAST(0x8B120000 AS SmallDateTime), CAST(0x8B2E0000 AS SmallDateTime), N'A', 281.9194)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10548, N'TOMSP', 3, CAST(0x8B150000 AS SmallDateTime), CAST(0x8B310000 AS SmallDateTime), N'T', 2.2594)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10549, N'QUICK', 5, CAST(0x8B160000 AS SmallDateTime), CAST(0x8B240000 AS SmallDateTime), N'A', 270.5592)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10550, N'GODOS', 7, CAST(0x8B170000 AS SmallDateTime), CAST(0x8B330000 AS SmallDateTime), N'M', 6.8256)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10552, N'HILAA', 2, CAST(0x8B180000 AS SmallDateTime), CAST(0x8B340000 AS SmallDateTime), N'A', 131.4876)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10553, N'WARTH', 2, CAST(0x8B190000 AS SmallDateTime), CAST(0x8B350000 AS SmallDateTime), N'T', 236.1942)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10555, N'SAVEA', 6, CAST(0x8B1C0000 AS SmallDateTime), CAST(0x8B380000 AS SmallDateTime), N'A', 398.9342)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10556, N'JYTPE', 2, CAST(0x8B1D0000 AS SmallDateTime), CAST(0x8B470000 AS SmallDateTime), N'T', 15.4840)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10559, N'BLONP', 6, CAST(0x8B1F0000 AS SmallDateTime), CAST(0x8B3B0000 AS SmallDateTime), N'T', 12.7190)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10561, N'MARLA', 2, CAST(0x8B200000 AS SmallDateTime), CAST(0x8B3C0000 AS SmallDateTime), N'A', 382.6918)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10563, N'RICAR', 2, CAST(0x8B240000 AS SmallDateTime), CAST(0x8B4E0000 AS SmallDateTime), N'T', 95.4794)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10568, N'GALED', 3, CAST(0x8B270000 AS SmallDateTime), CAST(0x8B430000 AS SmallDateTime), N'M', 10.3332)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10569, N'RATTC', 5, CAST(0x8B2A0000 AS SmallDateTime), CAST(0x8B460000 AS SmallDateTime), N'A', 93.1884)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10570, N'MEREP', 3, CAST(0x8B2B0000 AS SmallDateTime), CAST(0x8B470000 AS SmallDateTime), N'A', 298.6042)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10572, N'BERGS', 3, CAST(0x8B2C0000 AS SmallDateTime), CAST(0x8B480000 AS SmallDateTime), N'T', 183.9594)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10573, N'ANTON', 7, CAST(0x8B2D0000 AS SmallDateTime), CAST(0x8B490000 AS SmallDateTime), N'M', 134.0472)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10575, N'MORGK', 5, CAST(0x8B2E0000 AS SmallDateTime), CAST(0x8B3C0000 AS SmallDateTime), N'A', 201.1972)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10576, N'MIGAN', 3, CAST(0x8B310000 AS SmallDateTime), CAST(0x8B3F0000 AS SmallDateTime), N'M', 29.3248)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10581, N'FAMIA', 3, CAST(0x8B340000 AS SmallDateTime), CAST(0x8B500000 AS SmallDateTime), N'A', 4.7558)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10582, N'BLAUS', 3, CAST(0x8B350000 AS SmallDateTime), CAST(0x8B510000 AS SmallDateTime), N'T', 43.7818)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10583, N'WARTH', 2, CAST(0x8B380000 AS SmallDateTime), CAST(0x8B540000 AS SmallDateTime), N'T', 11.5024)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10585, N'WELLI', 7, CAST(0x8B390000 AS SmallDateTime), CAST(0x8B550000 AS SmallDateTime), N'T', 21.1878)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10588, N'QUICK', 2, CAST(0x8B3B0000 AS SmallDateTime), CAST(0x8B570000 AS SmallDateTime), N'A', 307.5786)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10592, N'LEHMS', 3, CAST(0x8B400000 AS SmallDateTime), CAST(0x8B5C0000 AS SmallDateTime), N'A', 50.7180)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10593, N'LEHMS', 7, CAST(0x8B410000 AS SmallDateTime), CAST(0x8B5D0000 AS SmallDateTime), N'T', 275.2360)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10594, N'OLDWO', 3, CAST(0x8B410000 AS SmallDateTime), CAST(0x8B5D0000 AS SmallDateTime), N'T', 8.2792)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10595, N'ERNSH', 2, CAST(0x8B420000 AS SmallDateTime), CAST(0x8B5E0000 AS SmallDateTime), N'A', 152.9124)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10597, N'PICCO', 7, CAST(0x8B430000 AS SmallDateTime), CAST(0x8B5F0000 AS SmallDateTime), N'M', 55.4896)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10599, N'BSBEV', 6, CAST(0x8B470000 AS SmallDateTime), CAST(0x8B710000 AS SmallDateTime), N'M', 47.3684)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10601, N'HILAA', 7, CAST(0x8B480000 AS SmallDateTime), CAST(0x8B720000 AS SmallDateTime), N'A', 92.1140)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10607, N'SAVEA', 5, CAST(0x8B4E0000 AS SmallDateTime), CAST(0x8B6A0000 AS SmallDateTime), N'A', 316.3792)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10609, N'JANLA', 7, CAST(0x8B500000 AS SmallDateTime), CAST(0x8B6C0000 AS SmallDateTime), N'T', 2.9230)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10611, N'ZBYSZ', 6, CAST(0x8B510000 AS SmallDateTime), CAST(0x8B6D0000 AS SmallDateTime), N'T', 127.4270)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10615, N'WILMK', 2, CAST(0x8B560000 AS SmallDateTime), CAST(0x8B720000 AS SmallDateTime), N'M', 1.1850)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10619, N'MEREP', 3, CAST(0x8B5B0000 AS SmallDateTime), CAST(0x8B770000 AS SmallDateTime), N'M', 143.8590)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10620, N'LAUGB', 2, CAST(0x8B5C0000 AS SmallDateTime), CAST(0x8B780000 AS SmallDateTime), N'M', 1.4852)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10625, N'ANATR', 3, CAST(0x8B5F0000 AS SmallDateTime), CAST(0x8B7B0000 AS SmallDateTime), N'A', 69.3620)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10633, N'ERNSH', 7, CAST(0x8B660000 AS SmallDateTime), CAST(0x8B820000 AS SmallDateTime), N'A', 755.0820)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10637, N'QUEEN', 6, CAST(0x8B6A0000 AS SmallDateTime), CAST(0x8B860000 AS SmallDateTime), N'A', 318.0382)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10638, N'FELIP', 3, CAST(0x8B6B0000 AS SmallDateTime), CAST(0x8B870000 AS SmallDateTime), N'A', 250.3352)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10639, N'SANTG', 7, CAST(0x8B6B0000 AS SmallDateTime), CAST(0x8B870000 AS SmallDateTime), N'M', 61.0512)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10642, N'JYTPE', 7, CAST(0x8B6D0000 AS SmallDateTime), CAST(0x8B890000 AS SmallDateTime), N'M', 66.1862)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10643, N'ALFKI', 6, CAST(0x8B700000 AS SmallDateTime), CAST(0x8B8C0000 AS SmallDateTime), N'A', 46.5468)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10644, N'WELLI', 3, CAST(0x8B700000 AS SmallDateTime), CAST(0x8B8C0000 AS SmallDateTime), N'T', 0.2212)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10648, N'RICAR', 5, CAST(0x8B730000 AS SmallDateTime), CAST(0x8B9D0000 AS SmallDateTime), N'T', 22.5150)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10649, N'MAISD', 5, CAST(0x8B730000 AS SmallDateTime), CAST(0x8B8F0000 AS SmallDateTime), N'M', 9.7960)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10650, N'FAMIA', 5, CAST(0x8B740000 AS SmallDateTime), CAST(0x8B900000 AS SmallDateTime), N'A', 279.3598)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10654, N'BERGS', 5, CAST(0x8B780000 AS SmallDateTime), CAST(0x8B940000 AS SmallDateTime), N'A', 87.3108)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10656, N'GREAL', 6, CAST(0x8B7A0000 AS SmallDateTime), CAST(0x8B960000 AS SmallDateTime), N'A', 90.2970)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10657, N'SAVEA', 2, CAST(0x8B7A0000 AS SmallDateTime), CAST(0x8B960000 AS SmallDateTime), N'A', 557.2502)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10659, N'QUEEN', 7, CAST(0x8B7B0000 AS SmallDateTime), CAST(0x8B970000 AS SmallDateTime), N'T', 167.1798)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10661, N'HUNGO', 7, CAST(0x8B7F0000 AS SmallDateTime), CAST(0x8B9B0000 AS SmallDateTime), N'M', 27.7290)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10662, N'LONEP', 3, CAST(0x8B7F0000 AS SmallDateTime), CAST(0x8B9B0000 AS SmallDateTime), N'T', 2.0224)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10663, N'MARSO', 2, CAST(0x8B800000 AS SmallDateTime), CAST(0x8B8E0000 AS SmallDateTime), N'T', 178.7770)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10666, N'RICSU', 7, CAST(0x8B820000 AS SmallDateTime), CAST(0x8B9E0000 AS SmallDateTime), N'A', 367.2236)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10667, N'ERNSH', 7, CAST(0x8B820000 AS SmallDateTime), CAST(0x8B9E0000 AS SmallDateTime), N'A', 123.3822)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10669, N'JYTPE', 2, CAST(0x8B850000 AS SmallDateTime), CAST(0x8BA10000 AS SmallDateTime), N'A', 38.5362)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10673, N'WILMK', 2, CAST(0x8B880000 AS SmallDateTime), CAST(0x8BA40000 AS SmallDateTime), N'A', 35.9608)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10675, N'FRANK', 5, CAST(0x8B890000 AS SmallDateTime), CAST(0x8BA50000 AS SmallDateTime), N'T', 50.3230)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10676, N'MIGAN', 2, CAST(0x8B8C0000 AS SmallDateTime), CAST(0x8BA80000 AS SmallDateTime), N'T', 3.1758)
GO
print 'Processed 200 total records'
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10678, N'SAVEA', 7, CAST(0x8B8D0000 AS SmallDateTime), CAST(0x8BA90000 AS SmallDateTime), N'A', 614.5884)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10681, N'GREAL', 3, CAST(0x8B8F0000 AS SmallDateTime), CAST(0x8BAB0000 AS SmallDateTime), N'M', 120.2854)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10682, N'ANTON', 3, CAST(0x8B8F0000 AS SmallDateTime), CAST(0x8BAB0000 AS SmallDateTime), N'T', 57.0854)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10683, N'JANLA', 2, CAST(0x8B900000 AS SmallDateTime), CAST(0x8BAC0000 AS SmallDateTime), N'A', 6.9520)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10684, N'HENRP', 3, CAST(0x8B900000 AS SmallDateTime), CAST(0x8BAC0000 AS SmallDateTime), N'A', 230.0954)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10686, N'PICCO', 2, CAST(0x8B940000 AS SmallDateTime), CAST(0x8BB00000 AS SmallDateTime), N'A', 152.4700)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10691, N'QUICK', 2, CAST(0x8B970000 AS SmallDateTime), CAST(0x8BC10000 AS SmallDateTime), N'A', 1279.8790)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10693, N'WHITC', 3, CAST(0x8B9A0000 AS SmallDateTime), CAST(0x8BA80000 AS SmallDateTime), N'M', 220.1572)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10695, N'WILMK', 7, CAST(0x8B9B0000 AS SmallDateTime), CAST(0x8BC50000 AS SmallDateTime), N'T', 26.4176)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10697, N'FELIP', 3, CAST(0x8B9C0000 AS SmallDateTime), CAST(0x8BB80000 AS SmallDateTime), N'T', 71.9216)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10699, N'MORGK', 3, CAST(0x8B9D0000 AS SmallDateTime), CAST(0x8BB90000 AS SmallDateTime), N'M', 0.9164)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10700, N'SAVEA', 3, CAST(0x8B9E0000 AS SmallDateTime), CAST(0x8BBA0000 AS SmallDateTime), N'A', 102.8580)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10701, N'HUNGO', 6, CAST(0x8BA10000 AS SmallDateTime), CAST(0x8BAF0000 AS SmallDateTime), N'A', 348.0898)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10703, N'MARLA', 6, CAST(0x8BA20000 AS SmallDateTime), CAST(0x8BBE0000 AS SmallDateTime), N'T', 240.6340)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10704, N'QUEEN', 6, CAST(0x8BA20000 AS SmallDateTime), CAST(0x8BBE0000 AS SmallDateTime), N'M', 7.5524)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10708, N'THEBI', 6, CAST(0x8BA50000 AS SmallDateTime), CAST(0x8BCF0000 AS SmallDateTime), N'T', 4.6768)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10711, N'SAVEA', 5, CAST(0x8BA90000 AS SmallDateTime), CAST(0x8BD30000 AS SmallDateTime), N'T', 82.8078)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10712, N'HUNGO', 3, CAST(0x8BA90000 AS SmallDateTime), CAST(0x8BC50000 AS SmallDateTime), N'A', 142.0894)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10714, N'SAVEA', 5, CAST(0x8BAA0000 AS SmallDateTime), CAST(0x8BC60000 AS SmallDateTime), N'M', 38.6942)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10715, N'MARSO', 3, CAST(0x8BAB0000 AS SmallDateTime), CAST(0x8BB90000 AS SmallDateTime), N'A', 99.8560)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10721, N'QUICK', 5, CAST(0x8BB10000 AS SmallDateTime), CAST(0x8BCD0000 AS SmallDateTime), N'M', 77.2936)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10723, N'WHITC', 3, CAST(0x8BB20000 AS SmallDateTime), CAST(0x8BCE0000 AS SmallDateTime), N'A', 34.3176)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10727, N'REGGC', 2, CAST(0x8BB60000 AS SmallDateTime), CAST(0x8BD20000 AS SmallDateTime), N'A', 142.0420)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10730, N'MARSO', 5, CAST(0x8BB80000 AS SmallDateTime), CAST(0x8BD40000 AS SmallDateTime), N'A', 31.7896)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10731, N'CHOPS', 7, CAST(0x8BB90000 AS SmallDateTime), CAST(0x8BD50000 AS SmallDateTime), N'A', 152.7070)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10734, N'GOURL', 2, CAST(0x8BBA0000 AS SmallDateTime), CAST(0x8BD60000 AS SmallDateTime), N'M', 2.5754)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10735, N'JAIYO', 6, CAST(0x8BBD0000 AS SmallDateTime), CAST(0x8BD90000 AS SmallDateTime), N'T', 72.6326)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10737, N'VINET', 2, CAST(0x8BBE0000 AS SmallDateTime), CAST(0x8BDA0000 AS SmallDateTime), N'T', 12.3082)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10738, N'SPECD', 2, CAST(0x8BBF0000 AS SmallDateTime), CAST(0x8BDB0000 AS SmallDateTime), N'A', 4.5978)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10739, N'VINET', 3, CAST(0x8BBF0000 AS SmallDateTime), CAST(0x8BDB0000 AS SmallDateTime), N'M', 17.5064)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10742, N'BOTTM', 3, CAST(0x8BC10000 AS SmallDateTime), CAST(0x8BDD0000 AS SmallDateTime), N'A', 385.0934)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10744, N'VAFFE', 6, CAST(0x8BC40000 AS SmallDateTime), CAST(0x8BE00000 AS SmallDateTime), N'A', 109.3202)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10747, N'PICCO', 6, CAST(0x8BC60000 AS SmallDateTime), CAST(0x8BE20000 AS SmallDateTime), N'A', 185.3814)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10748, N'SAVEA', 3, CAST(0x8BC70000 AS SmallDateTime), CAST(0x8BE30000 AS SmallDateTime), N'A', 367.4290)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10751, N'RICSU', 3, CAST(0x8BCB0000 AS SmallDateTime), CAST(0x8BE70000 AS SmallDateTime), N'M', 206.6482)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10752, N'NORTS', 2, CAST(0x8BCB0000 AS SmallDateTime), CAST(0x8BE70000 AS SmallDateTime), N'M', 2.1962)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10753, N'FRANS', 3, CAST(0x8BCC0000 AS SmallDateTime), CAST(0x8BE80000 AS SmallDateTime), N'A', 12.1660)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10754, N'MAGAA', 6, CAST(0x8BCC0000 AS SmallDateTime), CAST(0x8BE80000 AS SmallDateTime), N'M', 3.7604)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10757, N'SAVEA', 6, CAST(0x8BCE0000 AS SmallDateTime), CAST(0x8BEA0000 AS SmallDateTime), N'A', 12.9402)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10758, N'RICSU', 3, CAST(0x8BCF0000 AS SmallDateTime), CAST(0x8BEB0000 AS SmallDateTime), N'A', 218.3086)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10759, N'ANATR', 3, CAST(0x8BCF0000 AS SmallDateTime), CAST(0x8BEB0000 AS SmallDateTime), N'M', 18.9442)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10761, N'RATTC', 5, CAST(0x8BD30000 AS SmallDateTime), CAST(0x8BEF0000 AS SmallDateTime), N'T', 29.4828)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10762, N'MARLA', 3, CAST(0x8BD30000 AS SmallDateTime), CAST(0x8BEF0000 AS SmallDateTime), N'A', 519.4092)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10763, N'FOLIG', 3, CAST(0x8BD40000 AS SmallDateTime), CAST(0x8BF00000 AS SmallDateTime), N'M', 59.0130)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10764, N'ERNSH', 6, CAST(0x8BD40000 AS SmallDateTime), CAST(0x8BF00000 AS SmallDateTime), N'M', 229.8110)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10765, N'QUICK', 3, CAST(0x8BD50000 AS SmallDateTime), CAST(0x8BF10000 AS SmallDateTime), N'M', 67.5292)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10768, N'AROUT', 3, CAST(0x8BD90000 AS SmallDateTime), CAST(0x8BF50000 AS SmallDateTime), N'A', 231.1856)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10769, N'VAFFE', 3, CAST(0x8BD90000 AS SmallDateTime), CAST(0x8BF50000 AS SmallDateTime), N'A', 102.7948)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10772, N'LEHMS', 3, CAST(0x8BDB0000 AS SmallDateTime), CAST(0x8BF70000 AS SmallDateTime), N'T', 144.2224)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10775, N'THECR', 7, CAST(0x8BDD0000 AS SmallDateTime), CAST(0x8BF90000 AS SmallDateTime), N'A', 31.9950)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10777, N'GOURL', 7, CAST(0x8BE00000 AS SmallDateTime), CAST(0x8BEE0000 AS SmallDateTime), N'T', 4.7558)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10779, N'MORGK', 3, CAST(0x8BE10000 AS SmallDateTime), CAST(0x8BFD0000 AS SmallDateTime), N'T', 91.8454)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10780, N'LILAS', 2, CAST(0x8BE10000 AS SmallDateTime), CAST(0x8BEF0000 AS SmallDateTime), N'A', 66.5654)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10781, N'WARTH', 2, CAST(0x8BE20000 AS SmallDateTime), CAST(0x8BFE0000 AS SmallDateTime), N'M', 115.5928)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10787, N'LAMAI', 2, CAST(0x8BE40000 AS SmallDateTime), CAST(0x8BF20000 AS SmallDateTime), N'A', 394.8894)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10790, N'GOURL', 6, CAST(0x8BE70000 AS SmallDateTime), CAST(0x8C030000 AS SmallDateTime), N'A', 44.6034)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10791, N'FRANK', 6, CAST(0x8BE80000 AS SmallDateTime), CAST(0x8C040000 AS SmallDateTime), N'T', 26.6230)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10793, N'AROUT', 3, CAST(0x8BE90000 AS SmallDateTime), CAST(0x8C050000 AS SmallDateTime), N'M', 7.1416)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10794, N'QUEDE', 6, CAST(0x8BE90000 AS SmallDateTime), CAST(0x8C050000 AS SmallDateTime), N'A', 33.9542)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10796, N'HILAA', 3, CAST(0x8BEA0000 AS SmallDateTime), CAST(0x8C060000 AS SmallDateTime), N'A', 41.9016)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10797, N'DRACD', 7, CAST(0x8BEA0000 AS SmallDateTime), CAST(0x8C060000 AS SmallDateTime), N'T', 52.6930)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10798, N'ISLAT', 2, CAST(0x8BEB0000 AS SmallDateTime), CAST(0x8C070000 AS SmallDateTime), N'A', 3.6814)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10804, N'SEVES', 6, CAST(0x8BEF0000 AS SmallDateTime), CAST(0x8C0B0000 AS SmallDateTime), N'T', 43.1814)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10805, N'THEBI', 2, CAST(0x8BEF0000 AS SmallDateTime), CAST(0x8C0B0000 AS SmallDateTime), N'A', 374.9972)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10806, N'VICTE', 3, CAST(0x8BF00000 AS SmallDateTime), CAST(0x8C0C0000 AS SmallDateTime), N'T', 34.9338)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10808, N'OLDWO', 2, CAST(0x8BF10000 AS SmallDateTime), CAST(0x8C060000 AS SmallDateTime), N'M', 71.9374)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10809, N'WELLI', 7, CAST(0x8BF10000 AS SmallDateTime), CAST(0x8BFF0000 AS SmallDateTime), N'A', 7.6946)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10810, N'LAUGB', 2, CAST(0x8BF10000 AS SmallDateTime), CAST(0x8C060000 AS SmallDateTime), N'M', 6.8414)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10812, N'REGGC', 5, CAST(0x8BF20000 AS SmallDateTime), CAST(0x8C0D0000 AS SmallDateTime), N'A', 94.4524)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10814, N'VICTE', 3, CAST(0x8BF50000 AS SmallDateTime), CAST(0x8C100000 AS SmallDateTime), N'M', 206.8852)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10815, N'SAVEA', 2, CAST(0x8BF50000 AS SmallDateTime), CAST(0x8C100000 AS SmallDateTime), N'M', 23.0996)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10817, N'KOENE', 3, CAST(0x8BF60000 AS SmallDateTime), CAST(0x8C040000 AS SmallDateTime), N'A', 483.5906)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10818, N'MAGAA', 7, CAST(0x8BF70000 AS SmallDateTime), CAST(0x8C120000 AS SmallDateTime), N'M', 103.4584)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10819, N'CACTU', 2, CAST(0x8BF70000 AS SmallDateTime), CAST(0x8C120000 AS SmallDateTime), N'M', 31.2208)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10820, N'RATTC', 3, CAST(0x8BF70000 AS SmallDateTime), CAST(0x8C120000 AS SmallDateTime), N'T', 59.2816)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10822, N'TRAIH', 6, CAST(0x8BF80000 AS SmallDateTime), CAST(0x8C130000 AS SmallDateTime), N'M', 11.0600)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10823, N'LILAS', 5, CAST(0x8BF90000 AS SmallDateTime), CAST(0x8C140000 AS SmallDateTime), N'T', 259.0726)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10860, N'FRANR', 3, CAST(0x8C0F0000 AS SmallDateTime), CAST(0x8C280000 AS SmallDateTime), N'M', 30.4308)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10865, N'QUICK', 2, CAST(0x8C100000 AS SmallDateTime), CAST(0x8C1E0000 AS SmallDateTime), N'A', 550.0612)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10866, N'BERGS', 5, CAST(0x8C110000 AS SmallDateTime), CAST(0x8C2D0000 AS SmallDateTime), N'A', 172.3938)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10867, N'LONEP', 6, CAST(0x8C110000 AS SmallDateTime), CAST(0x8C3B0000 AS SmallDateTime), N'A', 3.0494)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10868, N'QUEEN', 7, CAST(0x8C120000 AS SmallDateTime), CAST(0x8C2E0000 AS SmallDateTime), N'A', 302.2066)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10869, N'SEVES', 5, CAST(0x8C120000 AS SmallDateTime), CAST(0x8C2E0000 AS SmallDateTime), N'A', 226.3824)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10870, N'ZBYSZ', 5, CAST(0x8C120000 AS SmallDateTime), CAST(0x8C2E0000 AS SmallDateTime), N'M', 19.0232)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10872, N'GODOS', 5, CAST(0x8C130000 AS SmallDateTime), CAST(0x8C2F0000 AS SmallDateTime), N'A', 277.0056)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10874, N'GODOS', 5, CAST(0x8C140000 AS SmallDateTime), CAST(0x8C300000 AS SmallDateTime), N'T', 30.9364)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10876, N'MARSO', 7, CAST(0x8C170000 AS SmallDateTime), CAST(0x8C330000 AS SmallDateTime), N'M', 95.4636)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10879, N'WILMK', 3, CAST(0x8C180000 AS SmallDateTime), CAST(0x8C340000 AS SmallDateTime), N'M', 13.4300)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10880, N'MARLA', 7, CAST(0x8C180000 AS SmallDateTime), CAST(0x8C420000 AS SmallDateTime), N'A', 139.0558)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10885, N'SUPRD', 6, CAST(0x8C1A0000 AS SmallDateTime), CAST(0x8C360000 AS SmallDateTime), N'M', 8.9112)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10890, N'JANLA', 7, CAST(0x8C1E0000 AS SmallDateTime), CAST(0x8C3A0000 AS SmallDateTime), N'A', 51.7608)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10891, N'LEHMS', 7, CAST(0x8C1F0000 AS SmallDateTime), CAST(0x8C3B0000 AS SmallDateTime), N'T', 32.1846)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10895, N'ERNSH', 3, CAST(0x8C200000 AS SmallDateTime), CAST(0x8C3C0000 AS SmallDateTime), N'A', 257.1450)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10896, N'MAISD', 7, CAST(0x8C210000 AS SmallDateTime), CAST(0x8C3D0000 AS SmallDateTime), N'M', 51.2710)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10897, N'HUNGO', 3, CAST(0x8C210000 AS SmallDateTime), CAST(0x8C3D0000 AS SmallDateTime), N'A', 953.5932)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10899, N'LILAS', 5, CAST(0x8C220000 AS SmallDateTime), CAST(0x8C3E0000 AS SmallDateTime), N'M', 1.9118)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10903, N'HANAR', 3, CAST(0x8C260000 AS SmallDateTime), CAST(0x8C420000 AS SmallDateTime), N'M', 58.0018)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10904, N'WHITC', 3, CAST(0x8C260000 AS SmallDateTime), CAST(0x8C420000 AS SmallDateTime), N'M', 257.4610)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10907, N'SPECD', 6, CAST(0x8C270000 AS SmallDateTime), CAST(0x8C430000 AS SmallDateTime), N'M', 14.5202)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10911, N'GODOS', 3, CAST(0x8C280000 AS SmallDateTime), CAST(0x8C440000 AS SmallDateTime), N'A', 60.3402)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10912, N'HUNGO', 2, CAST(0x8C280000 AS SmallDateTime), CAST(0x8C440000 AS SmallDateTime), N'A', 917.8378)
GO
print 'Processed 300 total records'
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10914, N'QUEEN', 6, CAST(0x8C290000 AS SmallDateTime), CAST(0x8C450000 AS SmallDateTime), N'A', 33.4802)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10915, N'MIGAN', 2, CAST(0x8C290000 AS SmallDateTime), CAST(0x8C450000 AS SmallDateTime), N'T', 5.5458)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10918, N'BOTTM', 3, CAST(0x8C2C0000 AS SmallDateTime), CAST(0x8C480000 AS SmallDateTime), N'M', 77.1514)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10919, N'FELIP', 2, CAST(0x8C2C0000 AS SmallDateTime), CAST(0x8C480000 AS SmallDateTime), N'T', 31.2840)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10922, N'HANAR', 5, CAST(0x8C2D0000 AS SmallDateTime), CAST(0x8C490000 AS SmallDateTime), N'M', 99.1292)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10923, N'LAMAI', 7, CAST(0x8C2D0000 AS SmallDateTime), CAST(0x8C570000 AS SmallDateTime), N'M', 107.8508)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10924, N'BERGS', 3, CAST(0x8C2E0000 AS SmallDateTime), CAST(0x8C4A0000 AS SmallDateTime), N'T', 239.4016)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10925, N'HANAR', 3, CAST(0x8C2E0000 AS SmallDateTime), CAST(0x8C4A0000 AS SmallDateTime), N'A', 3.5866)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10929, N'FRANK', 6, CAST(0x8C2F0000 AS SmallDateTime), CAST(0x8C4B0000 AS SmallDateTime), N'A', 53.6094)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10933, N'ISLAT', 6, CAST(0x8C300000 AS SmallDateTime), CAST(0x8C4C0000 AS SmallDateTime), N'M', 85.5570)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10934, N'LEHMS', 3, CAST(0x8C330000 AS SmallDateTime), CAST(0x8C4F0000 AS SmallDateTime), N'M', 50.5758)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10936, N'GREAL', 3, CAST(0x8C330000 AS SmallDateTime), CAST(0x8C4F0000 AS SmallDateTime), N'T', 53.2144)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10937, N'CACTU', 7, CAST(0x8C340000 AS SmallDateTime), CAST(0x8C420000 AS SmallDateTime), N'M', 49.7858)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10938, N'QUICK', 3, CAST(0x8C340000 AS SmallDateTime), CAST(0x8C500000 AS SmallDateTime), N'T', 50.3862)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10939, N'MAGAA', 2, CAST(0x8C340000 AS SmallDateTime), CAST(0x8C500000 AS SmallDateTime), N'T', 120.6014)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10941, N'SAVEA', 7, CAST(0x8C350000 AS SmallDateTime), CAST(0x8C510000 AS SmallDateTime), N'A', 633.2798)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10944, N'BOTTM', 6, CAST(0x8C360000 AS SmallDateTime), CAST(0x8C440000 AS SmallDateTime), N'M', 83.6136)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10947, N'BSBEV', 3, CAST(0x8C370000 AS SmallDateTime), CAST(0x8C530000 AS SmallDateTime), N'T', 5.1508)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10948, N'GODOS', 3, CAST(0x8C370000 AS SmallDateTime), CAST(0x8C530000 AS SmallDateTime), N'M', 36.9562)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10949, N'BOTTM', 2, CAST(0x8C370000 AS SmallDateTime), CAST(0x8C530000 AS SmallDateTime), N'M', 117.6152)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10954, N'FELIP', 5, CAST(0x8C3B0000 AS SmallDateTime), CAST(0x8C650000 AS SmallDateTime), N'A', 44.0978)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10956, N'BLAUS', 6, CAST(0x8C3B0000 AS SmallDateTime), CAST(0x8C650000 AS SmallDateTime), N'T', 70.5470)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10958, N'OCEAN', 7, CAST(0x8C3C0000 AS SmallDateTime), CAST(0x8C580000 AS SmallDateTime), N'T', 78.3048)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10959, N'GOURL', 6, CAST(0x8C3C0000 AS SmallDateTime), CAST(0x8C660000 AS SmallDateTime), N'T', 7.8684)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10960, N'HILAA', 3, CAST(0x8C3D0000 AS SmallDateTime), CAST(0x8C4B0000 AS SmallDateTime), N'A', 3.2864)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10964, N'SPECD', 3, CAST(0x8C3E0000 AS SmallDateTime), CAST(0x8C5A0000 AS SmallDateTime), N'T', 138.0604)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10965, N'OLDWO', 6, CAST(0x8C3E0000 AS SmallDateTime), CAST(0x8C5A0000 AS SmallDateTime), N'M', 228.1204)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10967, N'TOMSP', 2, CAST(0x8C410000 AS SmallDateTime), CAST(0x8C5D0000 AS SmallDateTime), N'T', 98.3076)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10971, N'FRANR', 2, CAST(0x8C420000 AS SmallDateTime), CAST(0x8C5E0000 AS SmallDateTime), N'T', 192.4756)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10973, N'LACOR', 6, CAST(0x8C420000 AS SmallDateTime), CAST(0x8C5E0000 AS SmallDateTime), N'T', 23.9686)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10974, N'SPLIR', 3, CAST(0x8C430000 AS SmallDateTime), CAST(0x8C510000 AS SmallDateTime), N'M', 20.4768)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10982, N'BOTTM', 2, CAST(0x8C450000 AS SmallDateTime), CAST(0x8C610000 AS SmallDateTime), N'A', 22.1358)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10983, N'SAVEA', 2, CAST(0x8C450000 AS SmallDateTime), CAST(0x8C610000 AS SmallDateTime), N'A', 1038.9132)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10985, N'HUNGO', 2, CAST(0x8C480000 AS SmallDateTime), CAST(0x8C640000 AS SmallDateTime), N'A', 144.5858)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10988, N'RATTC', 3, CAST(0x8C490000 AS SmallDateTime), CAST(0x8C650000 AS SmallDateTime), N'T', 96.6012)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10989, N'QUEDE', 2, CAST(0x8C490000 AS SmallDateTime), CAST(0x8C650000 AS SmallDateTime), N'A', 54.9208)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10990, N'ERNSH', 2, CAST(0x8C4A0000 AS SmallDateTime), CAST(0x8C740000 AS SmallDateTime), N'M', 185.8238)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10993, N'MARLA', 7, CAST(0x8C4A0000 AS SmallDateTime), CAST(0x8C660000 AS SmallDateTime), N'M', 13.9198)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10994, N'VAFFE', 2, CAST(0x8C4B0000 AS SmallDateTime), CAST(0x8C590000 AS SmallDateTime), N'M', 103.5374)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (10999, N'HENRP', 6, CAST(0x8C4C0000 AS SmallDateTime), CAST(0x8C680000 AS SmallDateTime), N'T', 152.2330)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11000, N'RATTC', 2, CAST(0x8C4F0000 AS SmallDateTime), CAST(0x8C6B0000 AS SmallDateTime), N'M', 87.0896)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11001, N'MARLA', 2, CAST(0x8C4F0000 AS SmallDateTime), CAST(0x8C6B0000 AS SmallDateTime), N'A', 311.7340)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11003, N'THECR', 3, CAST(0x8C4F0000 AS SmallDateTime), CAST(0x8C6B0000 AS SmallDateTime), N'M', 23.5578)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11004, N'MAISD', 3, CAST(0x8C500000 AS SmallDateTime), CAST(0x8C6C0000 AS SmallDateTime), N'A', 70.8472)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11005, N'WILMK', 2, CAST(0x8C500000 AS SmallDateTime), CAST(0x8C6C0000 AS SmallDateTime), N'A', 1.1850)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11006, N'GREAL', 3, CAST(0x8C500000 AS SmallDateTime), CAST(0x8C6C0000 AS SmallDateTime), N'T', 39.8002)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11008, N'ERNSH', 7, CAST(0x8C510000 AS SmallDateTime), CAST(0x8C6D0000 AS SmallDateTime), N'M', 125.5468)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11009, N'GODOS', 2, CAST(0x8C510000 AS SmallDateTime), CAST(0x8C6D0000 AS SmallDateTime), N'A', 93.3938)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11010, N'REGGC', 2, CAST(0x8C520000 AS SmallDateTime), CAST(0x8C6E0000 AS SmallDateTime), N'T', 45.3618)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11011, N'ALFKI', 3, CAST(0x8C520000 AS SmallDateTime), CAST(0x8C6E0000 AS SmallDateTime), N'A', 1.9118)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11013, N'ROMEY', 2, CAST(0x8C520000 AS SmallDateTime), CAST(0x8C6E0000 AS SmallDateTime), N'A', 52.1242)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11015, N'SANTG', 2, CAST(0x8C530000 AS SmallDateTime), CAST(0x8C610000 AS SmallDateTime), N'T', 7.2996)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11019, N'RANCH', 6, CAST(0x8C560000 AS SmallDateTime), CAST(0x8C720000 AS SmallDateTime), N'M', 5.0086)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11020, N'HENRP', 2, CAST(0x8C570000 AS SmallDateTime), CAST(0x8C730000 AS SmallDateTime), N'T', 68.4140)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11021, N'QUICK', 3, CAST(0x8C570000 AS SmallDateTime), CAST(0x8C730000 AS SmallDateTime), N'A', 469.5444)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11025, N'WARTH', 6, CAST(0x8C580000 AS SmallDateTime), CAST(0x8C740000 AS SmallDateTime), N'M', 46.0886)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11028, N'KOENE', 2, CAST(0x8C590000 AS SmallDateTime), CAST(0x8C750000 AS SmallDateTime), N'A', 46.7522)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11030, N'SAVEA', 7, CAST(0x8C5A0000 AS SmallDateTime), CAST(0x8C760000 AS SmallDateTime), N'A', 1312.5850)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11031, N'SAVEA', 6, CAST(0x8C5A0000 AS SmallDateTime), CAST(0x8C760000 AS SmallDateTime), N'A', 359.0076)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11032, N'WHITC', 2, CAST(0x8C5A0000 AS SmallDateTime), CAST(0x8C760000 AS SmallDateTime), N'A', 957.7802)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11033, N'RICSU', 7, CAST(0x8C5A0000 AS SmallDateTime), CAST(0x8C760000 AS SmallDateTime), N'M', 133.8892)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11035, N'SUPRD', 2, CAST(0x8C5D0000 AS SmallDateTime), CAST(0x8C790000 AS SmallDateTime), N'T', 0.2686)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11037, N'GODOS', 7, CAST(0x8C5E0000 AS SmallDateTime), CAST(0x8C7A0000 AS SmallDateTime), N'A', 5.0560)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11041, N'CHOPS', 3, CAST(0x8C5F0000 AS SmallDateTime), CAST(0x8C7B0000 AS SmallDateTime), N'T', 76.1876)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11042, N'COMMI', 2, CAST(0x8C5F0000 AS SmallDateTime), CAST(0x8C6D0000 AS SmallDateTime), N'A', 47.3842)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11043, N'SPECD', 5, CAST(0x8C5F0000 AS SmallDateTime), CAST(0x8C7B0000 AS SmallDateTime), N'T', 13.9040)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11045, N'BOTTM', 6, CAST(0x8C600000 AS SmallDateTime), CAST(0x8C7C0000 AS SmallDateTime), N'T', 111.5164)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11047, N'EASTC', 7, CAST(0x8C610000 AS SmallDateTime), CAST(0x8C7D0000 AS SmallDateTime), N'M', 73.6596)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11048, N'BOTTM', 7, CAST(0x8C610000 AS SmallDateTime), CAST(0x8C7D0000 AS SmallDateTime), N'M', 38.1096)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11049, N'GOURL', 3, CAST(0x8C610000 AS SmallDateTime), CAST(0x8C7D0000 AS SmallDateTime), N'A', 13.1772)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11051, N'LAMAI', 7, CAST(0x8C640000 AS SmallDateTime), CAST(0x8C800000 AS SmallDateTime), N'M', 4.4082)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11052, N'HANAR', 3, CAST(0x8C640000 AS SmallDateTime), CAST(0x8C800000 AS SmallDateTime), N'A', 106.2708)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11053, N'PICCO', 2, CAST(0x8C640000 AS SmallDateTime), CAST(0x8C800000 AS SmallDateTime), N'T', 83.8190)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11055, N'HILAA', 7, CAST(0x8C650000 AS SmallDateTime), CAST(0x8C810000 AS SmallDateTime), N'T', 191.0536)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11057, N'NORTS', 3, CAST(0x8C660000 AS SmallDateTime), CAST(0x8C820000 AS SmallDateTime), N'M', 6.5254)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11059, N'RICAR', 2, CAST(0x8C660000 AS SmallDateTime), CAST(0x8C900000 AS SmallDateTime), N'T', 135.5640)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11060, N'FRANS', 2, CAST(0x8C670000 AS SmallDateTime), CAST(0x8C830000 AS SmallDateTime), N'T', 17.3484)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11063, N'HUNGO', 3, CAST(0x8C670000 AS SmallDateTime), CAST(0x8C830000 AS SmallDateTime), N'T', 129.1334)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11066, N'WHITC', 7, CAST(0x8C680000 AS SmallDateTime), CAST(0x8C840000 AS SmallDateTime), N'T', 70.6576)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11070, N'LEHMS', 2, CAST(0x8C6C0000 AS SmallDateTime), CAST(0x8C880000 AS SmallDateTime), N'A', 214.8800)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11073, N'PERIC', 2, CAST(0x8C6C0000 AS SmallDateTime), CAST(0x8C880000 AS SmallDateTime), N'T', 39.4210)
INSERT [dbo].[pedido] ([codigo], [cliente], [vendedor], [datapedid], [datafatura], [via], [frete]) VALUES (11074, N'JYTPE', 7, CAST(0x8C6D0000 AS SmallDateTime), CAST(0x8C890000 AS SmallDateTime), N'T', 29.1352)
/****** Object:  Table [dbo].[itens]    Script Date: 03/11/2013 19:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itens](
	[pedido] [smallint] NOT NULL,
	[produto] [smallint] NOT NULL,
	[preco] [smallmoney] NOT NULL,
	[quant] [smallint] NOT NULL,
	[desconto] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_itens] PRIMARY KEY CLUSTERED 
(
	[pedido] ASC,
	[produto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10248, 11, 14.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10248, 42, 9.8000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10248, 72, 34.8000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10249, 14, 18.6000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10249, 51, 42.4000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10251, 22, 16.8000, 6, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10251, 57, 15.6000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10251, 65, 16.8000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10253, 31, 10.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10253, 39, 14.4000, 42, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10253, 49, 16.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10254, 24, 3.6000, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10254, 55, 19.2000, 21, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10254, 74, 8.0000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10256, 53, 26.2000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10256, 77, 10.4000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10264, 2, 15.2000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10265, 17, 31.2000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10265, 70, 12.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10269, 33, 2.0000, 60, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10269, 72, 27.8000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10271, 33, 2.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10272, 20, 64.8000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10272, 31, 10.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10272, 72, 27.8000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10273, 10, 24.8000, 24, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10273, 31, 10.0000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10273, 33, 2.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10273, 40, 14.7000, 60, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10274, 71, 17.2000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10274, 72, 27.8000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10277, 28, 36.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10277, 62, 39.4000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10280, 24, 3.6000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10280, 55, 19.2000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10280, 75, 6.2000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10283, 15, 12.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10283, 19, 7.3000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10283, 60, 27.2000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10283, 72, 27.8000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10289, 3, 8.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10291, 13, 4.8000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10291, 44, 15.5000, 24, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10291, 51, 42.4000, 2, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10295, 56, 30.4000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10296, 11, 16.8000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10296, 16, 13.9000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10296, 69, 28.8000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10297, 39, 14.4000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10297, 72, 27.8000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10298, 2, 15.2000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10298, 36, 15.2000, 40, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10298, 59, 44.0000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10298, 62, 39.4000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10300, 66, 13.6000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10300, 68, 10.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10303, 40, 14.7000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10303, 65, 16.8000, 30, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10303, 68, 10.0000, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10307, 62, 39.4000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10307, 68, 10.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10308, 69, 28.8000, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10308, 70, 12.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10309, 4, 17.6000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10309, 6, 20.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10309, 42, 11.2000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10309, 43, 36.8000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10309, 71, 17.2000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10312, 28, 36.4000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10312, 43, 36.8000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10312, 53, 26.2000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10312, 75, 6.2000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10313, 36, 15.2000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10317, 1, 14.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10319, 17, 31.2000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10319, 28, 36.4000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10320, 71, 17.2000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10321, 35, 14.4000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10322, 52, 5.6000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10327, 2, 15.2000, 25, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10327, 11, 16.8000, 50, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10327, 30, 20.7000, 35, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10327, 58, 10.6000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10330, 26, 24.9000, 50, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10330, 72, 27.8000, 25, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10332, 18, 50.0000, 40, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10332, 42, 11.2000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10332, 47, 7.6000, 16, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10333, 14, 18.6000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10333, 21, 8.0000, 10, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10333, 71, 17.2000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10335, 2, 15.2000, 7, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10335, 31, 10.0000, 25, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10335, 32, 25.6000, 6, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10335, 51, 42.4000, 48, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10336, 4, 17.6000, 18, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10339, 4, 17.6000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10339, 17, 31.2000, 70, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10339, 62, 39.4000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10341, 33, 2.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10341, 59, 44.0000, 9, CAST(15 AS Decimal(18, 0)))
GO
print 'Processed 100 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10345, 8, 32.0000, 70, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10345, 19, 7.3000, 80, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10345, 42, 11.2000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10346, 17, 31.2000, 36, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10346, 56, 30.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10349, 54, 5.9000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10350, 50, 13.0000, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10350, 69, 28.8000, 18, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10352, 24, 3.6000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10352, 54, 5.9000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10353, 11, 16.8000, 12, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10355, 24, 3.6000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10355, 57, 15.6000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10356, 31, 10.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10356, 55, 19.2000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10356, 69, 28.8000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10358, 24, 3.6000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10358, 34, 11.2000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10358, 36, 15.2000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10359, 16, 13.9000, 56, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10359, 31, 10.0000, 70, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10359, 60, 27.2000, 80, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10362, 25, 11.2000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10362, 51, 42.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10362, 54, 5.9000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10365, 11, 16.8000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10367, 34, 11.2000, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10367, 54, 5.9000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10367, 65, 16.8000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10367, 77, 10.4000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10368, 21, 8.0000, 5, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10368, 28, 36.4000, 13, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10368, 57, 15.6000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10370, 1, 14.4000, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10370, 74, 8.0000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10372, 20, 64.8000, 12, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10372, 60, 27.2000, 70, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10372, 72, 27.8000, 42, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10375, 14, 18.6000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10375, 54, 5.9000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10378, 71, 17.2000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10379, 63, 35.1000, 16, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10379, 65, 16.8000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10381, 74, 8.0000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10384, 20, 64.8000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10384, 60, 27.2000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10388, 45, 7.6000, 15, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10388, 52, 5.6000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10388, 53, 26.2000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10390, 31, 10.0000, 60, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10390, 35, 14.4000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10390, 46, 9.6000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10390, 72, 27.8000, 24, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10391, 13, 4.8000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10392, 69, 28.8000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10395, 46, 9.6000, 28, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10395, 53, 26.2000, 70, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10395, 69, 28.8000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10397, 21, 8.0000, 10, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10397, 51, 42.4000, 18, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10398, 35, 14.4000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10398, 55, 19.2000, 120, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10404, 26, 24.9000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10404, 42, 11.2000, 40, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10404, 49, 16.0000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10406, 1, 14.4000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10406, 21, 8.0000, 30, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10406, 28, 36.4000, 42, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10406, 36, 15.2000, 5, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10406, 40, 14.7000, 2, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10407, 11, 16.8000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10407, 69, 28.8000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10407, 71, 17.2000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10409, 14, 18.6000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10409, 21, 8.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10410, 33, 2.0000, 49, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10410, 59, 44.0000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10413, 1, 14.4000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10413, 62, 39.4000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10414, 19, 7.3000, 18, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10414, 33, 2.0000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10415, 17, 31.2000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10415, 33, 2.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10420, 9, 77.6000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10420, 13, 4.8000, 2, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10420, 70, 12.0000, 8, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10420, 73, 12.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10422, 26, 24.9000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10423, 31, 10.0000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10423, 59, 44.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10424, 35, 14.4000, 60, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10424, 68, 10.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10425, 55, 19.2000, 10, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10428, 46, 9.6000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10429, 50, 13.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10429, 63, 35.1000, 35, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10432, 26, 24.9000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10432, 54, 5.9000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10433, 56, 30.4000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10434, 11, 16.8000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10436, 46, 9.6000, 5, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 200 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10436, 56, 30.4000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10436, 75, 6.2000, 24, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10438, 19, 7.3000, 15, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10438, 34, 11.2000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10438, 57, 15.6000, 15, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10439, 16, 13.9000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10439, 74, 8.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10441, 27, 35.1000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10442, 11, 16.8000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10442, 54, 5.9000, 80, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10442, 66, 13.6000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10444, 17, 31.2000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10444, 26, 24.9000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10444, 35, 14.4000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10445, 39, 14.4000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10445, 54, 5.9000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10446, 19, 7.3000, 12, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10446, 24, 3.6000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10446, 31, 10.0000, 3, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10446, 52, 5.6000, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10449, 10, 24.8000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10449, 52, 5.6000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10449, 62, 39.4000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10457, 59, 44.0000, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10458, 26, 24.9000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10458, 28, 36.4000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10458, 43, 36.8000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10458, 56, 30.4000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10458, 71, 17.2000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10462, 13, 4.8000, 1, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10462, 23, 7.2000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10463, 19, 7.3000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10463, 42, 11.2000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10468, 30, 20.7000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10468, 43, 36.8000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10471, 7, 24.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10471, 56, 30.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10474, 14, 18.6000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10474, 28, 36.4000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10474, 40, 14.7000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10474, 75, 6.2000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10477, 1, 14.4000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10477, 21, 8.0000, 21, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10477, 39, 14.4000, 20, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10478, 10, 24.8000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10479, 53, 26.2000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10479, 59, 44.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10480, 47, 7.6000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10480, 59, 44.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10483, 34, 11.2000, 35, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10483, 77, 10.4000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10484, 21, 8.0000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10484, 40, 14.7000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10484, 51, 42.4000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10487, 19, 7.3000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10487, 26, 24.9000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10487, 54, 5.9000, 24, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10489, 11, 16.8000, 15, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10489, 16, 13.9000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10490, 59, 44.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10490, 68, 10.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10490, 75, 6.2000, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10492, 25, 11.2000, 60, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10492, 42, 11.2000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10495, 23, 7.2000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10495, 77, 10.4000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10496, 31, 10.0000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10497, 56, 30.4000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10497, 72, 27.8000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10497, 77, 10.4000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10500, 15, 15.5000, 12, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10500, 28, 45.6000, 8, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10502, 45, 9.5000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10502, 53, 32.8000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10502, 67, 14.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10503, 14, 23.2500, 70, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10503, 65, 21.0500, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10505, 62, 49.3000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10507, 43, 46.0000, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10507, 48, 12.7500, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10510, 29, 123.7900, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10510, 75, 7.7500, 36, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10512, 24, 4.5000, 10, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10512, 46, 12.0000, 9, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10512, 47, 9.5000, 6, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10512, 60, 34.0000, 12, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10513, 21, 10.0000, 40, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10513, 32, 32.0000, 50, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10513, 61, 28.5000, 15, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10514, 20, 81.0000, 39, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10514, 28, 45.6000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10514, 56, 38.0000, 70, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10514, 65, 21.0500, 39, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10514, 75, 7.7500, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10515, 9, 97.0000, 16, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10515, 16, 17.4500, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10515, 27, 43.9000, 120, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10515, 33, 2.5000, 16, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10515, 60, 34.0000, 84, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10516, 18, 62.5000, 25, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10516, 42, 14.0000, 20, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 300 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10517, 52, 7.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10517, 59, 55.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10517, 70, 15.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10519, 10, 31.0000, 16, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10519, 56, 38.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10519, 60, 34.0000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10520, 24, 4.5000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10520, 53, 32.8000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10523, 17, 39.0000, 25, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10523, 20, 81.0000, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10523, 37, 26.0000, 18, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10527, 4, 22.0000, 50, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10527, 36, 19.0000, 30, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10528, 11, 21.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10528, 33, 2.5000, 8, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10528, 72, 34.8000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10529, 55, 24.0000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10529, 68, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10529, 69, 36.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10530, 17, 39.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10530, 43, 46.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10530, 61, 28.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10531, 59, 55.0000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10532, 30, 25.8900, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10532, 66, 17.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10536, 31, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10536, 33, 2.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10536, 60, 34.0000, 35, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10539, 13, 6.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10539, 21, 10.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10539, 33, 2.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10539, 49, 20.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10540, 3, 10.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10540, 26, 31.2300, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10540, 68, 12.5000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10541, 24, 4.5000, 35, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10541, 65, 21.0500, 36, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10541, 71, 21.5000, 9, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10547, 32, 32.0000, 24, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10547, 36, 19.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10548, 34, 14.0000, 10, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10549, 31, 12.5000, 55, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10549, 45, 9.5000, 100, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10549, 51, 53.0000, 48, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10550, 17, 39.0000, 8, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10550, 19, 9.2000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10550, 21, 10.0000, 6, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10550, 61, 28.5000, 10, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10552, 69, 36.0000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10552, 75, 7.7500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10553, 11, 21.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10553, 16, 17.4500, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10553, 22, 21.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10553, 31, 12.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10553, 35, 18.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10555, 14, 23.2500, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10555, 19, 9.2000, 35, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10555, 24, 4.5000, 18, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10555, 51, 53.0000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10555, 56, 38.0000, 40, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10556, 72, 34.8000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10559, 55, 24.0000, 18, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10561, 44, 19.4500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10561, 51, 53.0000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10563, 36, 19.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10563, 52, 7.0000, 70, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10568, 10, 31.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10569, 31, 12.5000, 35, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10570, 11, 21.0000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10570, 56, 38.0000, 60, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10572, 16, 17.4500, 12, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10572, 32, 32.0000, 10, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10572, 40, 18.4000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10572, 75, 7.7500, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10573, 17, 39.0000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10573, 34, 14.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10573, 53, 32.8000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10575, 59, 55.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10575, 63, 43.9000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10575, 72, 34.8000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10576, 1, 18.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10576, 31, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10576, 44, 19.4500, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10581, 75, 7.7500, 50, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10582, 57, 19.5000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10583, 29, 123.7900, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10583, 60, 34.0000, 24, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10583, 69, 36.0000, 10, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10585, 47, 9.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10588, 18, 62.5000, 40, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10588, 42, 14.0000, 100, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10592, 15, 15.5000, 25, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10592, 26, 31.2300, 5, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10593, 20, 81.0000, 21, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10593, 69, 36.0000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10594, 52, 7.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10594, 58, 13.2500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10595, 35, 18.0000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10595, 61, 28.5000, 120, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10595, 69, 36.0000, 65, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10597, 24, 4.5000, 35, CAST(20 AS Decimal(18, 0)))
GO
print 'Processed 400 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10597, 57, 19.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10597, 65, 21.0500, 12, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10599, 62, 49.3000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10601, 13, 6.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10601, 59, 55.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10607, 7, 30.0000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10607, 17, 39.0000, 100, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10607, 33, 2.5000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10607, 40, 18.4000, 42, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10607, 72, 34.8000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10609, 1, 18.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10609, 10, 31.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10609, 21, 10.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10611, 1, 18.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10611, 2, 19.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10611, 60, 34.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10615, 55, 24.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10619, 21, 10.0000, 42, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10619, 22, 21.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10620, 24, 4.5000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10620, 52, 7.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10625, 14, 23.2500, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10625, 42, 14.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10625, 60, 34.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10633, 13, 6.0000, 13, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10633, 26, 31.2300, 35, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10633, 62, 49.3000, 80, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10637, 11, 21.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10637, 50, 16.2500, 25, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10637, 56, 38.0000, 60, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10638, 45, 9.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10638, 65, 21.0500, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10638, 72, 34.8000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10639, 18, 62.5000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10642, 21, 10.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10642, 61, 28.5000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10643, 28, 45.6000, 15, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10643, 39, 18.0000, 21, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10643, 46, 12.0000, 2, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10644, 18, 62.5000, 4, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10644, 43, 46.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10644, 46, 12.0000, 21, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10648, 22, 21.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10648, 24, 4.5000, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10649, 28, 45.6000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10649, 72, 34.8000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10650, 30, 25.8900, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10650, 53, 32.8000, 25, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10650, 54, 7.4500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10654, 4, 22.0000, 12, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10654, 39, 18.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10654, 54, 7.4500, 6, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10656, 14, 23.2500, 3, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10656, 44, 19.4500, 28, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10656, 47, 9.5000, 6, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10657, 15, 15.5000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10657, 46, 12.0000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10657, 47, 9.5000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10657, 56, 38.0000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10657, 60, 34.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10659, 31, 12.5000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10659, 40, 18.4000, 24, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10659, 70, 15.0000, 40, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10661, 39, 18.0000, 3, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10661, 58, 13.2500, 49, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10662, 68, 12.5000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10663, 40, 18.4000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10663, 42, 14.0000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10663, 51, 53.0000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10666, 29, 123.7900, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10666, 65, 21.0500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10667, 69, 36.0000, 45, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10667, 71, 21.5000, 14, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10669, 36, 19.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10673, 16, 17.4500, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10673, 42, 14.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10673, 43, 46.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10675, 14, 23.2500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10675, 53, 32.8000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10675, 58, 13.2500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10676, 10, 31.0000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10676, 19, 9.2000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10676, 44, 19.4500, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10678, 33, 2.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10678, 54, 7.4500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10681, 19, 9.2000, 30, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10681, 21, 10.0000, 12, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10682, 33, 2.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10682, 66, 17.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10682, 75, 7.7500, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10683, 52, 7.0000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10684, 40, 18.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10684, 47, 9.5000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10684, 60, 34.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10686, 17, 39.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10686, 26, 31.2300, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10691, 1, 18.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10691, 29, 123.7900, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10691, 43, 46.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10691, 44, 19.4500, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10691, 62, 49.3000, 48, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 500 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10693, 9, 97.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10693, 54, 7.4500, 60, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10693, 69, 36.0000, 30, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10693, 73, 15.0000, 15, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10695, 8, 40.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10695, 24, 4.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10697, 19, 9.2000, 7, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10697, 35, 18.0000, 9, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10697, 58, 13.2500, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10697, 70, 15.0000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10699, 47, 9.5000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10700, 1, 18.0000, 5, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10700, 34, 14.0000, 12, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10700, 68, 12.5000, 40, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10700, 71, 21.5000, 60, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10701, 59, 55.0000, 42, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10701, 71, 21.5000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10703, 2, 19.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10703, 59, 55.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10703, 73, 15.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10704, 4, 22.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10704, 24, 4.5000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10704, 48, 12.7500, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10708, 36, 19.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10711, 19, 9.2000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10711, 53, 32.8000, 120, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10712, 53, 32.8000, 3, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10712, 56, 38.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10714, 2, 19.0000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10714, 17, 39.0000, 27, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10714, 47, 9.5000, 50, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10714, 56, 38.0000, 18, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10714, 58, 13.2500, 12, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10715, 10, 31.0000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10715, 71, 21.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10721, 44, 19.4500, 50, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10723, 26, 31.2300, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10727, 17, 39.0000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10727, 56, 38.0000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10727, 59, 55.0000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10730, 16, 17.4500, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10730, 31, 12.5000, 3, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10730, 65, 21.0500, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10731, 21, 10.0000, 40, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10731, 51, 53.0000, 30, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10734, 6, 25.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10734, 30, 25.8900, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10735, 61, 28.5000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10735, 77, 13.0000, 2, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10737, 13, 6.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10738, 16, 17.4500, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10739, 36, 19.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10739, 52, 7.0000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10742, 3, 10.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10742, 60, 34.0000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10742, 72, 34.8000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10744, 40, 18.4000, 50, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10747, 31, 12.5000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10747, 63, 43.9000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10747, 69, 36.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10748, 23, 9.0000, 44, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10748, 40, 18.4000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10748, 56, 38.0000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10751, 26, 31.2300, 12, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10751, 30, 25.8900, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10751, 50, 16.2500, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10751, 73, 15.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10752, 1, 18.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10752, 69, 36.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10753, 45, 9.5000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10753, 74, 10.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10754, 40, 18.4000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10757, 34, 14.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10757, 59, 55.0000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10757, 62, 49.3000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10758, 26, 31.2300, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10758, 52, 7.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10758, 70, 15.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10759, 32, 32.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10761, 25, 14.0000, 35, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10761, 75, 7.7500, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10762, 39, 18.0000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10762, 47, 9.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10762, 51, 53.0000, 28, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10762, 56, 38.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10763, 21, 10.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10763, 22, 21.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10763, 24, 4.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10764, 3, 10.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10764, 39, 18.0000, 130, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10765, 65, 21.0500, 80, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10768, 22, 21.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10768, 31, 12.5000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10768, 60, 34.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10768, 71, 21.5000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10769, 52, 7.0000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10769, 61, 28.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10769, 62, 49.3000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10772, 29, 123.7900, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10772, 59, 55.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10775, 10, 31.0000, 6, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 600 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10775, 67, 14.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10777, 42, 14.0000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10779, 16, 17.4500, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10779, 62, 49.3000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10780, 70, 15.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10780, 77, 13.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10781, 54, 7.4500, 3, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10781, 56, 38.0000, 20, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10781, 74, 10.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10787, 2, 19.0000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10787, 29, 123.7900, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10790, 7, 30.0000, 3, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10790, 56, 38.0000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10791, 29, 123.7900, 14, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10793, 52, 7.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10794, 14, 23.2500, 15, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10794, 54, 7.4500, 6, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10796, 26, 31.2300, 21, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10796, 44, 19.4500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10796, 69, 36.0000, 24, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10797, 11, 21.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10798, 62, 49.3000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10798, 72, 34.8000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10804, 10, 31.0000, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10804, 28, 45.6000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10804, 49, 20.0000, 4, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10805, 34, 14.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10806, 2, 19.0000, 20, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10806, 65, 21.0500, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10806, 74, 10.0000, 15, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10808, 56, 38.0000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10809, 52, 7.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10810, 13, 6.0000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10810, 25, 14.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10810, 70, 15.0000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10812, 31, 12.5000, 16, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10812, 72, 34.8000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10812, 77, 13.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10814, 43, 46.0000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10814, 48, 12.7500, 8, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10814, 61, 28.5000, 30, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10815, 33, 2.5000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10817, 26, 31.2300, 40, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10817, 40, 18.4000, 60, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10817, 62, 49.3000, 25, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10818, 32, 32.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10819, 43, 46.0000, 7, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10819, 75, 7.7500, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10820, 56, 38.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10822, 62, 49.3000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10822, 70, 15.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10823, 11, 21.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10823, 57, 19.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10823, 59, 55.0000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10823, 77, 13.0000, 15, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10860, 51, 53.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10865, 39, 18.0000, 80, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10866, 2, 19.0000, 21, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10866, 24, 4.5000, 6, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10866, 30, 25.8900, 40, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10867, 53, 32.8000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10868, 26, 31.2300, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10868, 35, 18.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10868, 49, 20.0000, 42, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10869, 1, 18.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10869, 11, 21.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10869, 23, 9.0000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10869, 68, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10870, 35, 18.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10870, 51, 53.0000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10872, 55, 24.0000, 10, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10872, 62, 49.3000, 20, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10872, 65, 21.0500, 21, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10874, 10, 31.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10876, 46, 12.0000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10879, 40, 18.4000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10879, 65, 21.0500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10880, 23, 9.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10880, 61, 28.5000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10880, 70, 15.0000, 50, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10885, 2, 19.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10885, 24, 4.5000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10885, 70, 15.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10885, 77, 13.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10890, 17, 39.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10890, 34, 14.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10891, 30, 25.8900, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10895, 24, 4.5000, 110, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10895, 39, 18.0000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10895, 40, 18.4000, 91, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10895, 60, 34.0000, 100, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10896, 45, 9.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10896, 56, 38.0000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10897, 29, 123.7900, 80, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10897, 30, 25.8900, 36, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10899, 39, 18.0000, 8, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10903, 13, 6.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10903, 65, 21.0500, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10903, 68, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10904, 58, 13.2500, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10904, 62, 49.3000, 35, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 700 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10907, 75, 7.7500, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10911, 1, 18.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10911, 17, 39.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10911, 67, 14.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10912, 11, 21.0000, 40, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10912, 29, 123.7900, 60, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10914, 71, 21.5000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10915, 17, 39.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10915, 33, 2.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10915, 54, 7.4500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10918, 1, 18.0000, 60, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10918, 60, 34.0000, 25, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10919, 16, 17.4500, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10919, 25, 14.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10919, 40, 18.4000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10922, 17, 39.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10922, 24, 4.5000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10923, 42, 14.0000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10923, 43, 46.0000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10923, 67, 14.0000, 24, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10924, 10, 31.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10924, 28, 45.6000, 30, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10924, 75, 7.7500, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10925, 36, 19.0000, 25, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10925, 52, 7.0000, 12, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10929, 21, 10.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10929, 75, 7.7500, 49, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10929, 77, 13.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10933, 53, 32.8000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10933, 61, 28.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10934, 6, 25.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10936, 36, 19.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10937, 28, 45.6000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10937, 34, 14.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10938, 13, 6.0000, 20, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10938, 43, 46.0000, 24, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10938, 60, 34.0000, 49, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10938, 71, 21.5000, 35, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10939, 2, 19.0000, 10, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10939, 67, 14.0000, 40, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10941, 31, 12.5000, 44, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10941, 62, 49.3000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10941, 68, 12.5000, 80, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10941, 72, 34.8000, 50, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10944, 11, 21.0000, 5, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10944, 44, 19.4500, 18, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10944, 56, 38.0000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10947, 59, 55.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10948, 50, 16.2500, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10948, 51, 53.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10948, 55, 24.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10949, 6, 25.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10949, 10, 31.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10949, 17, 39.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10949, 62, 49.3000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10954, 16, 17.4500, 28, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10954, 31, 12.5000, 25, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10954, 45, 9.5000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10954, 60, 34.0000, 24, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10956, 21, 10.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10956, 47, 9.5000, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10956, 51, 53.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10958, 7, 30.0000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10958, 72, 34.8000, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10959, 75, 7.7500, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10960, 24, 4.5000, 10, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10964, 18, 62.5000, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10964, 69, 36.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10965, 51, 53.0000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10967, 19, 9.2000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10967, 49, 20.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10971, 29, 123.7900, 14, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10973, 26, 31.2300, 5, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10973, 75, 7.7500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10974, 63, 43.9000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10982, 7, 30.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10982, 43, 46.0000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10983, 13, 6.0000, 84, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10983, 57, 19.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10985, 16, 17.4500, 36, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10985, 18, 62.5000, 8, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10985, 32, 32.0000, 35, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10988, 7, 30.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10988, 62, 49.3000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10989, 6, 25.0000, 40, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10989, 11, 21.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10990, 21, 10.0000, 65, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10990, 34, 14.0000, 60, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10990, 55, 24.0000, 65, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10990, 61, 28.5000, 66, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10993, 29, 123.7900, 50, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10994, 59, 55.0000, 18, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10999, 51, 53.0000, 15, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (10999, 77, 13.0000, 21, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11000, 4, 22.0000, 25, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11000, 24, 4.5000, 30, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11000, 77, 13.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11001, 7, 30.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11001, 22, 21.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11001, 46, 12.0000, 25, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11001, 55, 24.0000, 6, CAST(0 AS Decimal(18, 0)))
GO
print 'Processed 800 total records'
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11003, 1, 18.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11003, 40, 18.4000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11003, 52, 7.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11004, 26, 31.2300, 6, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11005, 1, 18.0000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11005, 59, 55.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11006, 1, 18.0000, 8, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11006, 29, 123.7900, 2, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11008, 28, 45.6000, 70, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11008, 34, 14.0000, 90, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11008, 71, 21.5000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11009, 24, 4.5000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11009, 36, 19.0000, 18, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11009, 60, 34.0000, 9, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11010, 7, 30.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11010, 24, 4.5000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11011, 58, 13.2500, 40, CAST(5 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11011, 71, 21.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11013, 23, 9.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11013, 42, 14.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11013, 45, 9.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11013, 68, 12.5000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11015, 30, 25.8900, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11015, 77, 13.0000, 18, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11019, 46, 12.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11019, 49, 20.0000, 2, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11020, 10, 31.0000, 24, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11021, 2, 19.0000, 11, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11021, 20, 81.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11021, 26, 31.2300, 63, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11021, 51, 53.0000, 44, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11021, 72, 34.8000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11025, 1, 18.0000, 10, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11025, 13, 6.0000, 20, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11028, 55, 24.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11028, 59, 55.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11030, 2, 19.0000, 100, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11030, 29, 123.7900, 60, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11030, 59, 55.0000, 100, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11031, 1, 18.0000, 45, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11031, 13, 6.0000, 80, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11031, 24, 4.5000, 21, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11031, 71, 21.5000, 16, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11032, 36, 19.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11032, 59, 55.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11033, 53, 32.8000, 70, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11033, 69, 36.0000, 36, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11035, 1, 18.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11035, 35, 18.0000, 60, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11035, 42, 14.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11035, 54, 7.4500, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11037, 70, 15.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11041, 2, 19.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11041, 63, 43.9000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11042, 44, 19.4500, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11042, 61, 28.5000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11043, 11, 21.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11045, 33, 2.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11045, 51, 53.0000, 24, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11047, 1, 18.0000, 25, CAST(25 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11048, 68, 12.5000, 42, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11049, 2, 19.0000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11051, 24, 4.5000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11052, 43, 46.0000, 30, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11052, 61, 28.5000, 10, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11053, 18, 62.5000, 35, CAST(20 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11053, 32, 32.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11055, 24, 4.5000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11055, 25, 14.0000, 15, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11055, 51, 53.0000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11055, 57, 19.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11057, 70, 15.0000, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11059, 13, 6.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11059, 17, 39.0000, 12, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11059, 60, 34.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11060, 60, 34.0000, 4, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11060, 77, 13.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11063, 34, 14.0000, 30, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11063, 40, 18.4000, 40, CAST(10 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11066, 16, 17.4500, 3, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11066, 19, 9.2000, 42, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11066, 34, 14.0000, 35, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11070, 1, 18.0000, 40, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11070, 2, 19.0000, 20, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11070, 16, 17.4500, 30, CAST(15 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11070, 31, 12.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11073, 11, 21.0000, 10, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11073, 24, 4.5000, 20, CAST(0 AS Decimal(18, 0)))
INSERT [dbo].[itens] ([pedido], [produto], [preco], [quant], [desconto]) VALUES (11074, 16, 17.4500, 14, CAST(5 AS Decimal(18, 0)))
/****** Object:  Default [DF_sigla_pais]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pais] ADD  CONSTRAINT [DF_sigla_pais]  DEFAULT ('BRA') FOR [sigla]
GO
/****** Object:  Default [DF_nome_pais]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pais] ADD  CONSTRAINT [DF_nome_pais]  DEFAULT ('Brasil') FOR [nome]
GO
/****** Object:  Check [CK_codigo_cidade]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[cidade]  WITH CHECK ADD  CONSTRAINT [CK_codigo_cidade] CHECK  ((len([codigo]) < 4))
GO
ALTER TABLE [dbo].[cidade] CHECK CONSTRAINT [CK_codigo_cidade]
GO
/****** Object:  Check [CK_codigo_cliente]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [CK_codigo_cliente] CHECK  ((([codigo] like '[A-Z][A-Z][A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [CK_codigo_cliente]
GO
/****** Object:  Check [CK_tipo_cliente]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [CK_tipo_cliente] CHECK  ((([tipo] like '[FJ]')))
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [CK_tipo_cliente]
GO
/****** Object:  Check [CK_codigo_funcao]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcao]  WITH CHECK ADD  CONSTRAINT [CK_codigo_funcao] CHECK  ((len([codigo]) < 3))
GO
ALTER TABLE [dbo].[funcao] CHECK CONSTRAINT [CK_codigo_funcao]
GO
/****** Object:  Check [CK_cidade_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_cidade_funcionario] CHECK  ((len([cidade]) < 4))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_cidade_funcionario]
GO
/****** Object:  Check [CK_codigo_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_codigo_funcionario] CHECK  ((len([codigo]) < 3))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_codigo_funcionario]
GO
/****** Object:  Check [CK_estcivil_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_estcivil_funcionario] CHECK  ((([estcivil] like '[SCDVO]')))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_estcivil_funcionario]
GO
/****** Object:  Check [CK_funcao_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_funcao_funcionario] CHECK  ((len([funcao]) < 3))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_funcao_funcionario]
GO
/****** Object:  Check [CK_natural_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_natural_funcionario] CHECK  ((len([natural]) < 4))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_natural_funcionario]
GO
/****** Object:  Check [CK_setor_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_setor_funcionario] CHECK  ((([setor] like '[A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_setor_funcionario]
GO
/****** Object:  Check [CK_sexo_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_sexo_funcionario] CHECK  ((([sexo] like '[FM]')))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_sexo_funcionario]
GO
/****** Object:  Check [CK_trat_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [CK_trat_funcionario] CHECK  (([trat] = 'Dra' or [trat] = 'Dr' or [trat] = 'Srta' or [trat] = 'Sra' or [trat] = 'Sr'))
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [CK_trat_funcionario]
GO
/****** Object:  Check [CK_sigla_pais]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pais]  WITH NOCHECK ADD  CONSTRAINT [CK_sigla_pais] CHECK  ((([sigla] like '[A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[pais] CHECK CONSTRAINT [CK_sigla_pais]
GO
/****** Object:  Check [CK_cliente_pedido]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD  CONSTRAINT [CK_cliente_pedido] CHECK  ((([cliente] like '[A-Z][A-Z][A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [CK_cliente_pedido]
GO
/****** Object:  Check [CK_codigo_pedido]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD  CONSTRAINT [CK_codigo_pedido] CHECK  ((len([codigo]) < 6))
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [CK_codigo_pedido]
GO
/****** Object:  Check [CK_vendedor_pedido]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD  CONSTRAINT [CK_vendedor_pedido] CHECK  ((len([vendedor]) < 3))
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [CK_vendedor_pedido]
GO
/****** Object:  Check [CK_via_pedido]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD  CONSTRAINT [CK_via_pedido] CHECK  ((([via] like '[ATM]')))
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [CK_via_pedido]
GO
/****** Object:  Check [CK_codigo_produto]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[produto]  WITH NOCHECK ADD  CONSTRAINT [CK_codigo_produto] CHECK  ((len([codigo]) < 5))
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [CK_codigo_produto]
GO
/****** Object:  Check [CK_situacao_produto]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[produto]  WITH NOCHECK ADD  CONSTRAINT [CK_situacao_produto] CHECK  (([situacao] like '[NDS]'))
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [CK_situacao_produto]
GO
/****** Object:  Check [CK_chefe_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH NOCHECK ADD  CONSTRAINT [CK_chefe_setor] CHECK  ((len([chefe]) < 3))
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [CK_chefe_setor]
GO
/****** Object:  Check [CK_ramal_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH NOCHECK ADD  CONSTRAINT [CK_ramal_setor] CHECK  ((len([ramal]) < 4))
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [CK_ramal_setor]
GO
/****** Object:  Check [CK_sigla_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH NOCHECK ADD  CONSTRAINT [CK_sigla_setor] CHECK  ((([sigla] like '[A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [CK_sigla_setor]
GO
/****** Object:  Check [CK_superior_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH NOCHECK ADD  CONSTRAINT [CK_superior_setor] CHECK  ((([superior] like '[A-Z][A-Z][A-Z]')))
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [CK_superior_setor]
GO
/****** Object:  Check [CK_codigo_tipo]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[tipo]  WITH NOCHECK ADD  CONSTRAINT [CK_codigo_tipo] CHECK  ((len([codigo]) < 3))
GO
ALTER TABLE [dbo].[tipo] CHECK CONSTRAINT [CK_codigo_tipo]
GO
/****** Object:  ForeignKey [FK_cidade_pais]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[cidade]  WITH CHECK ADD  CONSTRAINT [FK_cidade_pais] FOREIGN KEY([pais])
REFERENCES [dbo].[pais] ([sigla])
GO
ALTER TABLE [dbo].[cidade] CHECK CONSTRAINT [FK_cidade_pais]
GO
/****** Object:  ForeignKey [FK_cliente_cidade]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[cliente]  WITH NOCHECK ADD  CONSTRAINT [FK_cliente_cidade] FOREIGN KEY([cidade])
REFERENCES [dbo].[cidade] ([codigo])
GO
ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_cidade]
GO
/****** Object:  ForeignKey [FK_funcionario_cidade]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [FK_funcionario_cidade] FOREIGN KEY([cidade])
REFERENCES [dbo].[cidade] ([codigo])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_cidade]
GO
/****** Object:  ForeignKey [FK_funcionario_cidade1]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [FK_funcionario_cidade1] FOREIGN KEY([natural])
REFERENCES [dbo].[cidade] ([codigo])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_cidade1]
GO
/****** Object:  ForeignKey [FK_funcionario_funcao]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [FK_funcionario_funcao] FOREIGN KEY([funcao])
REFERENCES [dbo].[funcao] ([codigo])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_funcao]
GO
/****** Object:  ForeignKey [FK_funcionario_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[funcionario]  WITH NOCHECK ADD  CONSTRAINT [FK_funcionario_setor] FOREIGN KEY([setor])
REFERENCES [dbo].[setor] ([sigla])
GO
ALTER TABLE [dbo].[funcionario] CHECK CONSTRAINT [FK_funcionario_setor]
GO
/****** Object:  ForeignKey [FK_pedido_itens]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[itens]  WITH CHECK ADD  CONSTRAINT [FK_pedido_itens] FOREIGN KEY([pedido])
REFERENCES [dbo].[pedido] ([codigo])
GO
ALTER TABLE [dbo].[itens] CHECK CONSTRAINT [FK_pedido_itens]
GO
/****** Object:  ForeignKey [FK_produto_itens]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[itens]  WITH CHECK ADD  CONSTRAINT [FK_produto_itens] FOREIGN KEY([produto])
REFERENCES [dbo].[produto] ([codigo])
GO
ALTER TABLE [dbo].[itens] CHECK CONSTRAINT [FK_produto_itens]
GO
/****** Object:  ForeignKey [FK_pedido_cliente]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD  CONSTRAINT [FK_pedido_cliente] FOREIGN KEY([cliente])
REFERENCES [dbo].[cliente] ([codigo])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_cliente]
GO
/****** Object:  ForeignKey [FK_pedido_funcionario]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[pedido]  WITH NOCHECK ADD  CONSTRAINT [FK_pedido_funcionario] FOREIGN KEY([vendedor])
REFERENCES [dbo].[funcionario] ([codigo])
GO
ALTER TABLE [dbo].[pedido] CHECK CONSTRAINT [FK_pedido_funcionario]
GO
/****** Object:  ForeignKey [FK_tipo_produto]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[produto]  WITH CHECK ADD  CONSTRAINT [FK_tipo_produto] FOREIGN KEY([tipo])
REFERENCES [dbo].[tipo] ([codigo])
GO
ALTER TABLE [dbo].[produto] CHECK CONSTRAINT [FK_tipo_produto]
GO
/****** Object:  ForeignKey [FK_setor_chefe]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH NOCHECK ADD  CONSTRAINT [FK_setor_chefe] FOREIGN KEY([chefe])
REFERENCES [dbo].[funcionario] ([codigo])
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [FK_setor_chefe]
GO
/****** Object:  ForeignKey [FK_setor_setor]    Script Date: 03/11/2013 19:03:20 ******/
ALTER TABLE [dbo].[setor]  WITH CHECK ADD  CONSTRAINT [FK_setor_setor] FOREIGN KEY([superior])
REFERENCES [dbo].[setor] ([sigla])
GO
ALTER TABLE [dbo].[setor] CHECK CONSTRAINT [FK_setor_setor]
GO
