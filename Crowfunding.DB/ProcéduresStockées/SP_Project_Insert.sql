CREATE PROCEDURE [dbo].[SP_Project_Insert]
	@name VARCHAR(64),
	@desc VARCHAR(MAX),
	@url VARCHAR(512) = NULL,
	@fundCap MONEY,
	@acNb VARCHAR(32),
	@startDate DATETIME2,
	@endDate DATETIME2,
	@idCreator INTEGER
AS
	INSERT INTO [Project]([Name],[Description],[URLVideo],[FundingCap],[AccountNumber],[StartDate],[EndDate],[IDCreator])
		OUTPUT inserted.IDProject
		VALUES(@name,@desc,@url,@fundCap,@acNb,@startDate,@endDate,@idCreator)
