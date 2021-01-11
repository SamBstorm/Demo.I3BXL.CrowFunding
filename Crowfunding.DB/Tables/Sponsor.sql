CREATE TABLE [dbo].[Sponsor]
(
	[IDSponsor] INT NOT NULL IDENTITY (1,1),
	[IDUser] INT NOT NULL,
	[IDProject] INT NOT NULL,
	[Amount] MONEY NOT NULL,
	[Date] DATETIME2 NOT NULL,
	CONSTRAINT PK_Sponsor PRIMARY KEY ([IDSponsor]),
	CONSTRAINT CK_Sponsor_Amount CHECK ([Amount] > 0),
	CONSTRAINT FK_Sponsor_User FOREIGN KEY ([IDUser]) REFERENCES [User],
	CONSTRAINT FK_Sponsor_Project FOREIGN KEY ([IDProject]) REFERENCES [Project]
)
