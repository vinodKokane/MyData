USE [My_Training_SQL]
GO
-----------------------------------------------------------
-------------USERS_DELETE PROCEDURE------------------------
ALTER PROCEDURE Users_Delete @UserID INT
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM [dbo].[Users] WHERE [UserID]=@UserID; 
END
-----------------------------------------------------------
EXEC Users_Delete @UserID=109 
GO
-----------------------------------------------------------
