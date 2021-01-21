CREATE PROCEDURE [dbo].[SP_StepReward_Insert]
	@projectId int,
	@name VARCHAR(32),
	@amount MONEY,
	@reward VARCHAR(512)
AS
	INSERT INTO [StepReward](IDProject,[Name],[Amount],[Reward])
		OUTPUT inserted.IDStepReward
		VALUES (@projectId,@name,@amount,@reward)