--Create sp for get  lists the number of users in each company 
--where number of users greater than 10.

ALTER PROCEDURE Persons_DisplayNumberOfUser_GreaterThan @number INT
AS
BEGIN
	SET NOCOUNT ON 
	SELECT [CompanyName],
	COUNT(CompanyID) AS NumberOfUser
	FROM Persons 
	GROUP BY CompanyName
	HAVING COUNT(CompanyID)>@number
END

EXEC Persons_DisplayNumberOfUser_GreaterThan @number=10
GO