USE [My_Training_SQL]
GO

--------------------------------------------------------------------

ALTER FUNCTION [dbo].[FN_Companys_GetCompanyName](@ID INT)
RETURNS VARCHAR(50) 
AS
BEGIN
	DECLARE @CompanyName VARCHAR(50)
	SELECT @CompanyName =[CompanyName] FROM [dbo].[Companys]
	WHERE CompanyID =@ID
	RETURN @CompanyName
END
--------------------------------------------------------------------
ALTER PROCEDURE Companys_Get @CompanyID INT
AS
BEGIN
	SET NOCOUNT ON 
	SELECT [dbo].[FN_Companys_GetCompanyName](@CompanyID) AS ComapnyName
END
--------------------------------------------------------------------
EXEC Companys_Get @CompanyID=2
GO
--------------------------------------------------------------------
