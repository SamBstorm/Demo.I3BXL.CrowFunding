﻿CREATE TABLE [dbo].[Admin]
(
	[IDUser] INT NOT NULL,
	[PromotedDate] DATETIME2 NOT NULL,
	CONSTRAINT PK_Admin PRIMARY KEY ([IDUser]),
	CONSTRAINT FK_Admin_User FOREIGN KEY ([IDUser]) REFERENCES [User],
)
