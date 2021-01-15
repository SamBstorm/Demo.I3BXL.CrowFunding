CREATE VIEW [dbo].[V_FullProjectCreator]
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
	pc.SocietyName,
	pc.TVANumber,
	a.IDAddress AS Society_IDAddress,
	a.Number AS Society_Number,
	a.Street AS Society_Street,
	a.City AS Society_City,
	a.Department AS Society_Departement,
	a.Country AS Society_Country
FROM Project_Creator AS pc JOIN
	V_FullBasicUser AS v ON pc.IDUser = v.ID JOIN
	[Address] AS a ON pc.IDAddress = a.IDAddress