CREATE VIEW [dbo].[V_FullAdmin]
	AS
SELECT v.ID,
	v.[FirstName],
	v.LastName,
	v.BirthDate,
	v.[Login],
	v.Email,
	v.Phone,
	v.IDAddress,
	v.Number,
	v.Street,
	v.City,
	v.Department,
	v.Country,
	a.PromotedDate
FROM [Admin] AS a JOIN
	[V_FullBasicUser] AS v ON a.IDUser = v.ID
