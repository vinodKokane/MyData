USE [My_Training_SQL]
GO
----------------------------------------------------------------------------
ALTER PROCEDURE Users_Update 
				 @UserID INT	
				,@UserName VARCHAR(50)
				,@UserLastName VARCHAR(50)
				,@State VARCHAR(50)
				,@City VARCHAR(50)
				,@Phone VARCHAR(50)
				,@RolesID INT
AS
BEGIN
		SET NOCOUNT ON

		UPDATE [dbo].[Users]
		   SET [UserName]=@UserName
		      ,[UserLastName]=@UserLastName
			  ,[State]=@State
			  ,[City]=@City
			  ,[Phone]=@Phone
			  ,[RolesID]=@RolesID
		WHERE [UserID]=@UserID
END
----------------------------------------------------------------------------

EXEC Users_Update @UserID=109	
				,@UserName='MINAL' 
				,@UserLastName='JIGLANI'
				,@State ='GUJARATH'
				,@City ='SURAT'
				,@Phone ='7867679090'
				,@RolesID=1004
GO
----------------------------------------------------------------------------
