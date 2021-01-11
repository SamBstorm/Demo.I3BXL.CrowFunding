CREATE TABLE [dbo].[Project_Creator]
(
	[IDUser] INT NOT NULL,
	[TVANumber] VARCHAR(16) NOT NULL,
	[SocietyName] VARCHAR(256) NOT NULL,
	CONSTRAINT PK_Project_Creator PRIMARY KEY ([IDUser]),
	CONSTRAINT UK_Project_Creator_TVANumber UNIQUE ([TVANumber])
)
