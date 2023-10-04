USE [My_Training_SQL]
GO

CREATE VIEW VW_Persons_LengthOfName
AS
	SELECT [PersonID]
		,[BusinessID]
		,[PersonName]
		,[RolesID]
		,[PersonLastName]
		,[Email]
		,[CompanyID]
	FROM [dbo].[Persons]
   WHERE LEN([PersonName])>5

 SELECT [PersonID]
	,[BusinessID]
	,[PersonName]
	,[RolesID]
	,[PersonLastName]
	,[Email]
	,[CompanyID] 
  FROM [dbo].[VW_Persons_LengthOfName]
  GO
  
  