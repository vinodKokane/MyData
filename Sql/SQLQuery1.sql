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
  FROM [dbo].[Users]

GO

INSERT INTO [dbo].[Users]
	       ([UserID]
		   ,[UserName]
		   ,[LastName]
		   ,[City]
		   ,[State]
		   ,[Occupation]
		   ,[Contact]
		   ,[CompanyID])
	VALUES 
			(001
			,'VINOD'
			,'KOKANE'
			,'NASHIK'
			,'MAHARASHTRA'
			,'SOFTWARE ENGINEER'
			,'8208067186'
			,1001)

GO

INSERT INTO [dbo].[Users]
	       ([UserID]
		   ,[UserName]
		   ,[LastName]
		   ,[City]
		   ,[State]
		   ,[Occupation]
		   ,[Contact]
		   ,[CompanyID])
	VALUES 
			(002
			,'NEEL'
			,'MEHATA'
			,'SURAT'
			,'GUJARAT'
			,'SOFTWARE ENGINEER'
			,'990909090'
			,1001)
GO


