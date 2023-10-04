USE [My_Training_SQL]
GO

SELECT [RolesID]
      ,[RolesName]
  FROM [dbo].[Roles]

GO
----------------------------------------------------------------------------
CREATE PROCEDURE Roles_InsertnNEW @RolesID INT,@RolesName VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [dbo].[Roles]
			   ([RolesID]
			   ,[RolesName])
		VALUES (@RolesID
			   ,@RolesName)
END
----------------------------------------------------------------------------
