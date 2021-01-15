CREATE PROCEDURE [dbo].[SP_User_Insert]
	@login VARCHAR(16),
	@password NVARCHAR(32),
	@fn VARCHAR(64),
	@ln VARCHAR(64),
	@ml VARCHAR(256),
	@phone VARCHAR(16) = NULL,
	@birthdate DATE,
	@number VARCHAR(8),
	@street VARCHAR(128),
	@city VARCHAR(32),
	@country VARCHAR(32),
	@department VARCHAR(32) = NULL
AS
	DECLARE @idAddress INTEGER, @salt CHAR(8)
	SET @salt = [dbo].SF_GenerateSalt()
	INSERT INTO [Address](Number, Street, City, Country, Department)
		VALUES (@number, @street, @city, @country, @department)
	SET @idAddress = @@IDENTITY
	INSERT INTO [User]([Login], [Password], [Email],[BirthDate],[FirstName],[LastName],[Phone],[Salt], [IDAddress])
	OUTPUT inserted.IDUser
		VALUES (@login, dbo.SF_EncryptedPassword(@password, @salt), @ml, @birthdate,@fn,@ln,@phone,@salt,@idAddress)

