DECLARE @cId INTEGER = (SELECT ID FROM [V_FullProjectCreator] WHERE Email LIKE 'samuel.legrain@bstorm.be')
DECLARE @aId INTEGER = (SELECT ID FROM [V_FullAdmin] WHERE Email LIKE 'michael.person@cognitic.be')

EXECUTE SP_Project_Insert
	@name = 'MaSuperDB',
	@desc = 'Serie vidéo de tutoriaux concernant SQL Server',
	@url ='https://youtu.be/knGhzlGsGtk',
	@fundCap = 24999.99,
	@acNb = 'BE12-1234-1234-1234',
	@startDate = '2021-01-30',
	@endDate = '2021-02-20',
	@idCreator = @cId

DECLARE @pId INTEGER = (SELECT IDProject FROM [Project] WHERE [Name] LIKE 'MaSuperDB')
EXECUTE SP_StepReward_Insert
	@projectId = @pId,
	@name = 'Participant',
	@amount = 0,
	@reward = 'Porte clé à l''éffigie du créateur'
	
EXECUTE SP_StepReward_Insert
	@projectId = @pId,
	@name = 'Petite bourse',
	@amount = 10,
	@reward = 'Bourse en tissu'

EXECUTE SP_StepReward_Insert
	@projectId = @pId,
	@name = 'Bill Gates?',
	@amount = 1000,
	@reward = 'Mug avec Logo'

EXECUTE SP_Project_Validate
	@idProject = @pId,
	@idAdmin = @aId

INSERT INTO [Reject](IDUser,IDProject,[Date],Comment)
    VALUES  (@aId,@pId,'2020-12-25','Pas assez explicite.'),
            (@aId,@pId,'2020-12-31','La vidéo est bien, mais le budget semble trop élevé.')
	
INSERT INTO [Sponsor](IDUser,IDProject,[Amount],[Date])
    VALUES  (@aId,@pId,200,'2021-02-01'),
            (@aId,@pId,799.99,'2021-02-14')