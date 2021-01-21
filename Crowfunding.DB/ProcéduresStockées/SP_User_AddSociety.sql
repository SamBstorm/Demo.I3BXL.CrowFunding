CREATE PROCEDURE [dbo].[SP_User_AddSociety]
	@userId INTEGER,
	@socName VARCHAR(256),
	@socTVA VARCHAR(16),
	@number VARCHAR(8),
	@street VARCHAR(128),
	@city VARCHAR(32),
	@country VARCHAR(32),
	@department VARCHAR(32) = NULL
AS
	DECLARE @idAddress INTEGER
	INSERT INTO [Address](Number,Street,Department,City,Country)
		VALUES (@number,@street,@department,@city,@country)
	SET @idAddress = @@IDENTITY
	INSERT INTO [Project_Creator](IDUser,IDAddress,SocietyName,TVANumber)
		VALUES (@userId,@idAddress,@socName,@socTVA)
RETURN 0
