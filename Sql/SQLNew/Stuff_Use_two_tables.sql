USE [My_Training_SQL]
GO

SELECT [CompanyID]
      ,[CompanyName]
      ,[City]
      ,[State]
  FROM [dbo].[Companies]
GO

SELECT [UserID]
      ,[UserName]
      ,[UserLastName]
      ,[State]
      ,[City]
      ,[Phone]
      ,[CompanyID]
      ,[RolesID]
  FROM [dbo].[Users]

GO
------------------------------------------------------------------
SELECT DISTINCT [Users].[CompanyID],
	
	[Companies].[CompanyName],

	COALESCE
	(

		STUFF((SELECT ','+[Users].[UserName]

		FROM [Users]

		WHERE [Users].[CompanyID]=[Companies].[CompanyID]
	
		FOR XML PATH('')),1,1,''),
	
		''
	) 
	
	AS UserName
	
	FROM [dbo].[Users]
	
	LEFT JOIN Companies
	
	ON [Users].[CompanyID]=[Companies].[CompanyID]

GO
------------------------------------------------------------------
