CREATE TABLE [dbo].[StepReward]
(
	[IDStepReward] INT NOT NULL IDENTITY,
	[Name] VARCHAR(32) NOT NULL,
	[Amount] MONEY NOT NULL,
	[Reward] VARCHAR(512) NOT NULL,
	[CreationDate] DATETIME2 NOT NULL DEFAULT GETDATE(),
	[IDProject] INT NOT NULL,
	CONSTRAINT PK_StepReward PRIMARY KEY([IDStepReward]),
	CONSTRAINT CK_StepReward_Amount CHECK ([Amount] >= 0),
	CONSTRAINT UK_StepReward_Amount_Project UNIQUE ([Amount],[IDProject]),
	CONSTRAINT UK_StepReward_Reward_Project UNIQUE ([Reward],[IDProject]),
	CONSTRAINT FK_StepReward_Project FOREIGN KEY([IDStepReward]) REFERENCES [Project],
)