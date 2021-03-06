﻿CREATE TABLE [dbo].[Address]
(
	[IDAddress] INT NOT NULL IDENTITY,
	[Number] VARCHAR(8) NOT NULL,
	[Street] VARCHAR(128) NOT NULL,
	[City] VARCHAR(32) NOT NULL,
	[Country] VARCHAR(32) NOT NULL,
	[Department] VARCHAR(32),
	CONSTRAINT PK_Address PRIMARY KEY ([IDAddress]),
	CONSTRAINT UK_Address UNIQUE ([Number],[Street],[City],[Country],[Department])
)
