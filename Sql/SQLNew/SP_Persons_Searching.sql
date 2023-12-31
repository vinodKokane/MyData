USE [My_Training_SQL]
GO
------------------------------------------------------------------
ALTER PROCEDURE [dbo].[Persons_Search] @Title VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON
	SELECT [PersonID]
		  ,[BusinessID]
		  ,[PersonName]
		  ,[RolesID]
		  ,[PersonLastName]
		  ,[Email]
	  FROM [dbo].[Persons]
	 WHERE [PersonName] LIKE '%'+@Title+'%'
END
---------------------------------------------------------------------
EXEC Persons_Search @Title='Mit'
GO
---------------------------------------------------------------------
EXEC Persons_Search @Title='ne'
GO
---------------------------------------------------------------------
EXEC Persons_Search @Title='el'
GO
---------------------------------------------------------------------
EXEC Persons_Search @Title='ee'
GO
---------------------------------------------------------------------