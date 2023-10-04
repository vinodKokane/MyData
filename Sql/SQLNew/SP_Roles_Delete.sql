USE [My_Training_SQL]
GO
----------------------------------------------------------------------------
ALTER PROCEDURE Roles_Delete @RolesID INT
AS
BEGIN
	SET NOCOUNT ON 
	DELETE [dbo].[Roles] WHERE [RolesID]=@RolesID
END
----------------------------------------------------------------------------
