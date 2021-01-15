CREATE VIEW [dbo].[V_FullBasicUser]
	AS 
SELECT 
	u.IDUser AS ID,
	u.FirstName,
	u.LastName,
	u.BirthDate,
	u.[Login],
	u.Email,
	u.Phone,
	a.IDAddress,
	a.Number,
	a.Street,
	a.City,
	a.Department,
	a.Country
FROM [User] AS u JOIN
	[Address] AS a ON u.IDAddress = a.IDAddress