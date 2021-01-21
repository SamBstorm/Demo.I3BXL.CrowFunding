EXECUTE SP_User_Insert
	@login = 'slegrain',
	@password = 'test1234',
	@fn = 'Samuel',
	@ln = 'Legrain',
	@ml = 'samuel.legrain@bstorm.be',
	@phone = '+32490123456',
	@birthdate = '1987-09-27',
	@number = '15',
	@street = 'Avenue des cerisiers',
	@city = 'Brussels',
	@country = 'BELGIUM'

EXECUTE SP_User_Insert
	@login = 'mperson',
	@password = 'test1234',
	@fn = 'Michael',
	@ln = 'Person',
	@ml = 'michael.person@cognitic.be',
	@phone = '+32490654321',
	@birthdate = '1983-01-01',
	@number = '12',
	@street = 'Avenue McArthur',
	@city = 'Waterloo',
	@country = 'BELGIUM',
	@department = 'Brabant Wallon'

DECLARE @uId INTEGER = (SELECT IDUser FROM [User] WHERE Email LIKE 'samuel.legrain@bstorm.be')
EXECUTE SP_User_AddSociety
	@userId = @uId,
	@socName = 'BrainStorm Consulting',
	@socTVA = 'BE0123456789',
	@number = '2B',
	@street = 'Boulvard Audan',
	@city = 'Charleroi',
	@country = 'BELGIUM'

DECLARE @uId2 INTEGER = (SELECT IDUser FROM [User] WHERE Email LIKE 'michael.person@cognitic.be')
INSERT INTO [Admin]
    VALUES  (@uId2, GETDATE())