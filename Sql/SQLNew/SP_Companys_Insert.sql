USE [My_Training_SQL]
GO
----------------------------------------------------------------------------
ALTER PROCEDURE Companys_Insert 
				 @CompanyName VARCHAR(50)
				,@City VARCHAR(30)
				,@State VARCHAR(30)
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Companys]
			   ([CompanyName]
			   ,[City]
			   ,[State])
		VALUES	
				(@CompanyName
				,@City
				,@State)
END
----------------------------------------------------------------------------


	 