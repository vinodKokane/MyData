USE [trainning_sql]
GO

DELETE FROM [dbo].[Users]
      WHERE <Search Conditions,,>
GO


------------------SP FOR DELETE-------------------------

CREATE PROCEDURE Users_Delete @City VARCHAR(50),@State VARCHAR(50)
AS
BEGIN
	DELETE FROM [dbo].[Users]
		  WHERE [City] =@City
			AND [State]=@State
END

