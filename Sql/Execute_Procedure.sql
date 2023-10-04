USE [trainning_sql]
GO

DECLARE @City varchar(50)
DECLARE @PostalCode varchar(50)

-- TODO: Set parameter values here
----------------------------------------------------------------------------

--------------Execute the Users_Update Procedure

EXEC Users_Update @City ='NASHIK',@PostalCode ='422103'
GO
----------------------------------------------------------------------------
EXEC Users_Insert_1 @UserID=4
				   ,@UserName='Himesh'
				   ,@LastName='Mehata'
				   ,@City='Surat'
				   ,@State ='Gujarat'
				   ,@Occupation ='Automation Tester'
				   ,@Contact='5555555'
				   ,@CompanyId=1004
				   ,@PostalCode='12345'
GO
----------------------------------------------------------------------------
