------Create function for getting companyname and use this function into sp
USE [My_Training_SQL]
GO
----------------------------------------------------------------------------

CREATE FUNCTION [dbo].FN_Companys_GetCompanyName(@ID INT)

------HERE RETURNS MEANS IT WILL DISPLAY MULTIPEL COMPANY NAMES 

RETURNS VARCHAR(50) 
AS
BEGIN
	DECLARE @CompanyName VARCHAR(50)
	SELECT @CompanyName =[CompanyName] from [dbo].[Companys]
	WHERE CompanyID =@ID

------HERE RETURNS MEANS IT WILL DISPLAY ONE BY ONE NAME COMPANY NAMES 

	RETURN @CompanyName
END
----------------------------------------------------------------------------

---------------For Single Company Name -------------------

SELECT [dbo].FN_Companys_GetCompanyName(1) As CompanyName 
GO
----------------------------------------------------------------------------
--------------For Multiple Company Name---------------------------

SELECT [dbo].FN_Companys_GetCompanyName([CompanyID]) As CompanyName FROM Companys
GO
----------------------------------------------------------------------------

