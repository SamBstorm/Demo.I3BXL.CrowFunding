CREATE PROCEDURE [dbo].[SP_Project_Validate]
	@idProject int,
	@idAdmin int
AS
	UPDATE Project
		SET	IDValidator = @idAdmin,
			ValidationDate = GETDATE()
		WHERE IDProject = @idProject