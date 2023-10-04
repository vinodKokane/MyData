USE [My_Training_SQL]
GO
----------------------------------------------------------------------------
ALTER PROCEDURE Roles_Update @RolesID INT,@RolesName VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON
	UPDATE [dbo].[Roles]
	   SET [RolesName]=@RolesName
	 WHERE [RolesID]=@RolesID 
END

----------------------------------------------------------------------------
EXEC Roles_Update @RolesID=1005
				 ,@RolesName='ANDROID DEVELOPER'
GO
----------------------------------------------------------------------------
