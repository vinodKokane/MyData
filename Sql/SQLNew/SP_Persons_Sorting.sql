USE [My_Training_SQL]
GO
---------------------------------------------------------------------

-------------------------CREATE SORTING PROCEDURE

ALTER PROCEDURE Persons_Sorting @SortOrder VARCHAR(50),@SortCol INT
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
  ORDER BY
	CASE 
	   WHEN @SortCol=1 AND @SortOrder ='ase' 
	   THEN [PersonID]
	   END ASC,
	CASE
		WHEN @SortCol=2 AND @SortOrder ='ase'
		THEN [BusinessID]
		END ASC,
	CASE 
		WHEN @SortCol=3 AND @SortOrder='ase'
		THEN [PersonName]
		END ASC,
	CASE 
		WHEN @SortCol=4 AND @SortOrder='ase'
		THEN [RolesID]
		END ASC,
	CASE 
		WHEN @SortCol=5 AND @SortOrder='ase'
		THEN [PersonLastName]
		END ASC,
	CASE 
		WHEN @SortCol=6 AND @SortOrder='ase'
		THEN [Email]
		END ASC,

-------------------DESC ORDER----------------------------
	CASE 
	   WHEN @SortCol=1 AND @SortOrder ='desc' 
	   THEN [PersonID]
	   END DESC,
	CASE
		WHEN @SortCol=2 AND @SortOrder ='desc'
		THEN [BusinessID]
		END DESC,
	CASE 
		WHEN @SortCol=3 AND @SortOrder='desc'
		THEN [PersonName]
		END DESC,
	CASE 
		WHEN @SortCol=4 AND @SortOrder='desc'
		THEN [RolesID]
		END DESC,
	CASE 
		WHEN @SortCol=5 AND @SortOrder='desc'
		THEN [PersonLastName]
		END DESC,
	CASE 
		WHEN @SortCol=6 AND @SortOrder='desc'
		THEN [Email]
		END DESC
END
---------------------------------------------------------------------
--------------WHILE ENTER 1 THEN DESENDING ORDER WILL CALLED
EXEC Persons_Sorting @SortCol =2,@SortOrder='DESC'
GO
---------------------------------------------------------------------

