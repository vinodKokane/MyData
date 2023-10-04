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

UPDATE [dbo].[Users]
   SET [PostalCode]=422103
 WHERE [UserID]=1
 GO

 UPDATE [dbo].[Users]
	SET	[PostalCode]=422104
  WHERE [UserID]=2
  GO

  --CREATE PROCEDURE FOR INSERT
  CREATE PROCEDURE Users_Insert @City VARCHAR(50),@PostalCode VARCHAR(50)
  AS
  BEGIN
  INSERT INTO [dbo].[Users]
			  ([UserID]
			  ,[UserName]
			  ,[LastName]
			  ,[City]
			  ,[State]
			  ,[Occupation]
			  ,[Contact]
			  ,[CompanyID]
			  ,[PostalCode])
		VALUES
			  (3
			  ,'SAMMY'
			  ,'JOSEPH'
			  ,@City
			  ,'DADRA NAGAR'
			  ,'REACT DEVELOPER'
			  ,'565656'
			  ,1002
			  ,@PostalCode)
	END
	GO

	EXEC Users_Insert @City ='DAMAN' ,@PostalCode='396210'
	GO

	CREATE PROCEDURE Users_Insert_1 
					 @UserID int
	                ,@UserName VARCHAR(30),
					 @LastName VARCHAR(30),
					 @City VARCHAR(30),
					 @State VARCHAR(50),
					 @Occupation VARCHAR(50),
					 @Contact VARCHAR(30),
					 @CompanyID int,
					 @PostalCode VARCHAR(30)
	AS
	BEGIN
		INSERT INTO [dbo].[Users]
				   ([UserID]
				   ,[UserName]
				   ,[LastName]
				   ,[City]
				   ,[State]
				   ,[Occupation]
				   ,[Contact]
				   ,[CompanyID]
				   ,[PostalCode])
			VALUES
					(
					@UserID
				   ,@UserName
				   ,@LastName
				   ,@City
				   ,@State
				   ,@Occupation
				   ,@Contact
				   ,@CompanyID
				   ,@PostalCode)
	END
	GO

	EXEC Users_Insert_1 @UserID=101
				   ,@UserName='ABC'
				   ,@LastName ='XYZ'
				   ,@City='abc'
				   ,@State ='EFG'
				   ,@Occupation='DEV'
				   ,@Contact='5678'
				   ,@CompanyID=101
				   ,@PostalCode='202200'
	GO