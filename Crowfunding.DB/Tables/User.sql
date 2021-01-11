﻿CREATE TABLE [dbo].[User]
(
	[IDUser] INT NOT NULL IDENTITY,
	[Email] VARCHAR(256) NOT NULL,
	[FirstName] VARCHAR(64) NOT NULL,
	[LastName] VARCHAR(64) NOT NULL,
	[Login] VARCHAR(16) NOT NULL,
	[Password] VARBINARY(32) NOT NULL,
	[Phone] VARCHAR(16),
	[BirthDate] DATE NOT NULL,
	[IDAddress] INTEGER NOT NULL,
	CONSTRAINT FK_User_Address FOREIGN KEY ([IDAddress]) REFERENCES [Address]([IDAddress]),
	CONSTRAINT PK_User PRIMARY KEY ([IDUser])
)