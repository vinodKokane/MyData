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

----------------SP FOR UPDATE

CREATE PROCEDURE Users_Update @City VARCHAR(50),@PostalCode VARCHAR(50)
AS
BEGIN
	UPDATE [dbo].[Users]
		SET[City]=@City,[PostalCode]=@PostalCode
		WHERE UserID=101
END
GO

EXEC Users_Update @City='Nashik',@PostalCode='422103'
GO