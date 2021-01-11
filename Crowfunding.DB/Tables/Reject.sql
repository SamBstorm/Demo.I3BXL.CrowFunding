﻿CREATE TABLE [dbo].[Reject]
(
	[IDReject] INT NOT NULL IDENTITY,
	[IDUser] INT NOT NULL,
	[IDProject] INT NOT NULL,
	[Date] DATETIME2 NOT NULL,
	[Comment] VARCHAR(1024) NOT NULL,
	CONSTRAINT PK_Reject PRIMARY KEY ([IDReject]),
	CONSTRAINT FK_Reject_User FOREIGN KEY ([IDReject]) REFERENCES [Admin] ,
	CONSTRAINT FK_Reject_Project FOREIGN KEY ([IDReject]) REFERENCES [Project],
)