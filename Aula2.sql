CREATE TABLE TB_PRODUTO
(
	ProdutoId			int		IDENTITY(1, 1),			-- identity � de identidade (numeroDeInicio, SomaDosProximos)
	ProdutoId_02		int		NOT NULL,				-- indica que a variavel n�o pode ser nula
	ProdutoId_03		int		NULL					-- indica que a variavel pode ser nula
);