USE [trainning_sql]
GO

SELECT [UserID]
      ,[UserName]
      ,[LastName]
      ,[City]
      ,[State]
      ,[Occupation]
      ,[Contact]
      ,[CompanyID]
      ,[PostalCode]
  FROM [dbo].[Users]

GO

----------------------------------------------------------------------------
SELECT COUNT(DISTINCT City) AS CITYS FROM Users
GO
----------------------------------------------------------------------------
-------------------USE OF ORDER BY CLAUSE-----------------------------------
SELECT [UserName],[LastName],[City] FROM [dbo].[Users] ORDER BY [City]
GO
----------------------------------------------------------------------------
SELECT [UserID],[UserName],[LastName],[City] FROM [dbo].[Users] ORDER BY [UserID]
GO
----------------------------------------------------------------------------

SELECT * FROM [dbo].[Users] ORDER BY [UserID] DESC
GO
----------------------------------------------------------------------------
SELECT * FROM [dbo].[Users] ORDER BY [UserID] ASC
GO
----------------------------------------------------------------------------
