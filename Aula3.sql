CREATE TABLE TB_PRODUTO
(
	-- ProdutoId		Int		Identity(1,1)	PRIMARY KEY				-- primary key não permite valores duplicados (como dois produtoId == 1)
	-- ||
	ProdutoId		Int		Identity(1,1),
	CONSTRAINT		PK_PRODUTO		Primary Key (ProdutoId)
	-- || pode ter mais primary keys tmb
	-- ProdutoId		Int		Identity(1,1),
	-- NumContrato		Int,
	-- CONSTRAINT		PK_PRODUTO		Primary Key (ProdutoId, NumContrato)
);


ALTER TABLE TB_PRODUTO
ADD CONSTRAINT PK_PRODUTO PRIMARY KEY (ProdutoId);						-- COMANDO PARA ALTERAR ALGO NA TABELA JA CRIADA


CREATE TABLE TB_CLIENTE
(
	CPF varchar(12) not null,
	CONSTRAINT UQ_CLIENTE_CPF UNIQUE(CPF)								-- não permite duplicidade
);


ALTER TABLE TB_CLIENTE
ADD CONSTRAINT UQ_CLIENTE_CPF UNIQUE(CPF);