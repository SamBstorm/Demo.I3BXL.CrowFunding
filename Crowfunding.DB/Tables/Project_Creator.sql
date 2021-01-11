CREATE TABLE [dbo].[Project_Creator]
(
	[IDUser] INT NOT NULL,
	[TVANumber] VARCHAR(16) NOT NULL,
	[SocietyName] VARCHAR(256) NOT NULL,
	[IDAddress] INTEGER NOT NULL,
	CONSTRAINT PK_Project_Creator PRIMARY KEY ([IDUser]),
	CONSTRAINT UK_Project_Creator_TVANumber UNIQUE ([TVANumber]),
	CONSTRAINT FK_Project_Creator_User FOREIGN KEY ([IDUser]) REFERENCES [User],
	CONSTRAINT FK_Project_Creator_Address FOREIGN KEY ([IDAddress]) REFERENCES [Address],
)
