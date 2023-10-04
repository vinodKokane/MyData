-----------------------Create index-----------------------
USE My_Training_SQL
GO
----------------------------------------------------------
SELECT [ID]
      ,[FirstName]
      ,[CompanyName]
  FROM [dbo].[Students]
GO
----------------------------------------------------------
CREATE INDEX IX_Students_ID
ON Students(ID) 
GO
----------------------------------------------------------