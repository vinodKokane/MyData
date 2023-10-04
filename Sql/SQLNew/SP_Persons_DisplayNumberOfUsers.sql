--8. Create sp for get  lists the number of users in each company
USE My_Training_SQL
GO
-------------------------------------------------------

ALTER PROCEDURE Persons_DisplayNumberOfUsers 
	AS
	BEGIN
		SET NOCOUNT ON
		SELECT [CompanyName]
		,COUNT([CompanyID]) AS NumOfUsers 
		FROM Persons 
		GROUP BY [CompanyName]		
	END
-------------------------------------------------------
EXEC Persons_DisplayNumberOfUsers 
-------------------------------------------------------



