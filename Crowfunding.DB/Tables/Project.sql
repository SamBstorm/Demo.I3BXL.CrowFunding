CREATE TABLE [dbo].[Project]
(
	[IDProject] INT NOT NULL,
	[Name] VARCHAR(64) NOT NULL,
	[Description] VARCHAR(MAX) NOT NULL,
	[URLVideo] VARCHAR(512),
	[FundingCap] MONEY NOT NULL,
	[AccountNumber] VARCHAR(32) NOT NULL,
	[StartDate] DATETIME2 NOT NULL,
	[EndDate] DATETIME2 NOT NULL,
	[IDCreator] INTEGER NOT NULL,
	[IDValidator] INTEGER,
	[ValidationDate] DATETIME2,
	CONSTRAINT FK_Project_Project_Creator FOREIGN KEY ([IDCreator]) REFERENCES [Project_Creator]([IDUser]),
	CONSTRAINT FK_Project_Admin FOREIGN KEY ([IDValidator]) REFERENCES [Admin]([IDUser]),
	CONSTRAINT UK_Project_Name UNIQUE ([Name]),
	CONSTRAINT UK_Project_URLVideo UNIQUE ([URLVideo]),
	CONSTRAINT PK_Project PRIMARY KEY ([IDProject])
)
