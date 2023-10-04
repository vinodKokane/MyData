USE [My_Training_SQL]
GO

SELECT [CompanyID]
      ,[CompnayName]
      ,[City]
      ,[State]
  FROM [dbo].[Companys]

GO
----------------------------------------------------------------------------

ALTER PROCEDURE Companys_Update
				 @CompanyID INT
				,@City VARCHAR(50)
				,@State VARCHAR(50)
		AS
		BEGIN
		SET NOCOUNT ON
		UPDATE [dbo].[Companys]
				SET [City]=@City
					,[State]=@State
			WHERE [CompanyID]=@CompanyID
		END
----------------------------------------------------------------------------
EXEC Companys_Update @City='Surat'
					,@State='Gujarat'
					,@CompanyID=1002
----------------------------------------------------------------------------

