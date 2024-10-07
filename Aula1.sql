CREATE TABLE TiposNumericos
(
	numero			bigint,					-- -2^53 até 2^63 -1
	numero_2		int,					-- -2^31 até 2^31
	numero_3		smallint,				-- -2^15 até 2^15
	numero_4		tinyint,				-- 0 até 255
	bool			bit,					-- 0 ou 1 ou null
	_decimal		decimal (10,2),			-- (precisão, escala) ex 2,345 (4, 3)
	_decimal_2		numeric (10,2),			-- mesmo do decimal
	_decimal_3		money,					-- padrão para dinheiro 18byts
	_decimal_4		smallmoney,				-- 4byts
	bignumero		real,					-- 3,4^38 ate -1,18^-38			||		1,18^38 ate 3,4^38
	bignumero_2		float					-- -1,79^308 ate -2,23^-308		||		2,23^308 ate 1,79^308
);

CREATE TABLE TiposBinarios
(
	image_1			binary(3),				-- 3 null null
	image_2			varbinary(3),			-- 3 + null null
	image_3			image					-- 2^31 -1
);

CREATE TABLE TiposData
(
	dataHora		date,					-- 01-01-0001 ate 31-12-9999
	dataHora_2		datetime,				-- 01-01-1753 ate 31-12-9999  00:00 ate 23:59:59.997
	dataHora_3		datetime2,				-- 01-01-0001 ate 31-12-9999  00:00 ate 23:59:59.9999999
	dataHora_4		datetimeoffset,			-- mesmo que o datetime2 mas grava o fuso
	datahora_5		smalldatetime,			-- 01-01-1999 ate 06-06-2079  00:00 ate 23:59:59
	dataHora_6		time					-- 00:00 ate 23:59:59.9999999
);

CREATE TABLE TiposChar
(
	texto_1			char(4),				-- F '' '' '' (lim 8000)
	texto_2			varchar(4),				-- F + '' ''  (lim 8000)
	texto_3			text					-- varchar	  (lim 2^31)
);

CREATE TABLE TiposUnicode
(
	texto_1			nchar(1),				-- '' ''
	texto_2			nvarchar(2),			-- _ _ _ _ + '' ''
	texto_3			ntext					-- 2^31 -1
);