USE [My_Training_SQL]
GO
----------------------------------------------------------------------------

ALTER PROCEDURE Persons_Paging @Start INT
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
  ORDER BY [BusinessID] 

---OFFSET MEANS IT WILL REMOVE THE NUMBERS OF ROWS FROM 
---ORDER BY COLUMN
  
  OFFSET @Start ROWS

---FETCH NEXT WILL FETCH THE NEXT NUMBERS OF ROWS FROM TABLE

  --FETCH NEXT @End ROWS ONLY
END
GO
----------------------------------------------------------------------
EXEC Persons_Paging @Start=5
GO
----------------------------------------------------------------------
EXEC Persons_Paging @Start=3
GO
----------------------------------------------------------------------
EXEC Persons_Paging @Start=0
GO
----------------------------------------------------------------------
