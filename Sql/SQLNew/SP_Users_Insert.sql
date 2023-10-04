USE My_Training_SQL
GO
--------------------------------------------------------
CREATE PROCEDURE Users_Insert @UserName VARCHAR(50)
							 ,@UserLastName VARCHAR(50)
							 ,@State VARCHAR(50)
							 ,@City VARCHAR(50)
							 ,@Phone VARCHAR(10)
							 ,@CompanyID INT
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [dbo].[Users]
			   ([UserName]
			   ,[UserLastName]
			   ,[State]
			   ,[City]
			   ,[Phone]
			   ,[CompanyID])
	     VALUES	
			   (@UserName
			   ,@UserLastName
			   ,@State
			   ,@City
			   ,@Phone
			   ,@CompanyID)
END
GO
----------------------------------------------------------------------------
EXEC Users_Insert @UserName ='Minal'
				 ,@UserLastName='Jiglani'
			     ,@State='Gujarat'
			     ,@City='Surat'
			     ,@Phone='6767676767'
			     ,@CompanyID=2
GO
----------------------------------------------------------------------------
