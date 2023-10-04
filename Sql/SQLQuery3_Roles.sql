USE [trainning_sql]
GO

INSERT INTO [dbo].[Roles]
           ([RolesID]
           ,[CompanyID]
           ,[UserRole]
           ,[UserID]
           ,[CreatedDate]
           ,[ModifyDate])
     VALUES
           (111
           ,1
           ,'SOFTWARE ENGINEER'
           ,101
           ,2016-01-01
           ,2023-08-14)
GO

SELECT [RolesID]
      ,[CompanyID]
      ,[UserRole]
      ,[UserID]
      ,[CreatedDate]
      ,[ModifyDate]
 FROM  [dbo].[Roles]
 
GO

INSERT INTO [dbo].[Roles]
           ([RolesID]
           ,[CompanyID]
           ,[UserRole]
           ,[UserID]
           ,[CreatedDate]
           ,[ModifyDate])
     VALUES
           (111
           ,1
           ,'FULL STACK DEVELOPER'
           ,101
           ,2016-01-01
           ,GETDATE())
GO