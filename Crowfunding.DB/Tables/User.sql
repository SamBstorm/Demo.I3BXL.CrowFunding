﻿CREATE TABLE [dbo].[User]
(
	[IDUser] INT NOT NULL IDENTITY,
	[Email] VARCHAR(256) NOT NULL,
	[FirstName] VARCHAR(64) NOT NULL,
	[LastName] VARCHAR(64) NOT NULL,
	[Login] VARCHAR(16) NOT NULL,
	[Password] VARBINARY(32) NOT NULL,
	[Salt] CHAR(8) NOT NULL,
	[Phone] VARCHAR(16),
	[BirthDate] DATE NOT NULL,
	[IDAddress] INTEGER NOT NULL,
	CONSTRAINT PK_User PRIMARY KEY ([IDUser]),
	CONSTRAINT UK_User_Email UNIQUE ([Email]),
	CONSTRAINT UK_User_Login UNIQUE ([Login]),
	CONSTRAINT UK_User_Phone UNIQUE ([Phone]),
	CONSTRAINT CK_User_Email CHECK ([Email] LIKE '___%@___%.__%'),
	CONSTRAINT CK_User_BirthDate CHECK (DATEDIFF(YEAR,[BirthDate],GETDATE()) > 16 AND DATEDIFF(YEAR,[BirthDate],GETDATE()) < 90),
	CONSTRAINT FK_User_Address FOREIGN KEY ([IDAddress]) REFERENCES [Address]([IDAddress]),
)
