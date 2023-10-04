USE [My_Training_SQL]
GO
----------------------------------------------------------------------------
ALTER PROCEDURE Companys_Delete @CompanyID INT
AS
BEGIN
	SET NOCOUNT ON
	DELETE FROM Companys WHERE [CompanyID]=@CompanyID
END
----------------------------------------------------------------------------
EXEC Companys_Delete @CompanyID =1002
GO
----------------------------------------------------------------------------
