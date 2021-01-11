CREATE TABLE [dbo].[StepReward]
(
	[IDStepReward] INT NOT NULL IDENTITY,
	[Name] VARCHAR(32) NOT NULL,
	[Amount] MONEY NOT NULL,
	[Reward] VARCHAR(512) NOT NULL,
	[CreationDate] DATETIME2 NOT NULL,
	[IDProject] INT NOT NULL,
	CONSTRAINT PK_StepReward PRIMARY KEY([IDStepReward]),
	CONSTRAINT FK_StepReward_Project FOREIGN KEY([IDStepReward]) REFERENCES [Project],
)
