USE [My_Training_SQL]
GO

SELECT [BusinessID]
      ,[PersonName]
      ,[RolesID]
      ,[PersonLastName]
      ,[Email]
  FROM [dbo].[Persons]

GO
----------------------------------------------------------------------------
ALTER TABLE Persons ADD PersonID INT 

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (10
		   ,'VINOD'
		   ,1
		   ,'KOKANE'
		   ,'VINOD@EXAMPLE.COM')
GO

----------------------------------------------------------------------------
INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (11
		   ,'NEEL'
		   ,1
		   ,'MEHATA'
		   ,'NEEL@EXAMPLE.COM')
GO
----------------------------------------------------------------------------
INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (12
		   ,'PRAVEEN'
		   ,1
		   ,'MAHESHWARI'
		   ,'PRAVEEN@EXAMPLE.COM')
GO
----------------------------------------------------------------------------

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (13
		   ,'BHUMI'
		   ,1
		   ,'RANA'
		   ,'BHUMI@EXAMPLE.COM')
GO

----------------------------------------------------------------------------
INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (14
		   ,'NEHA'
		   ,1
		   ,'PERMAR'
		   ,'NEHA@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (15
		   ,'MITIN'
		   ,1
		   ,'PATEL'
		   ,'MITIN@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (16
		   ,'PRIYANK'
		   ,1
		   ,'VYAS'
		   ,'PRIYANK@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (17
		   ,'MAHESH'
		   ,1
		   ,'KAUSHAL'
		   ,'MAHESH@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (18
		   ,'SWAPNIL'
		   ,1
		   ,'PATEL'
		   ,'SWAPNIL@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (19
		   ,'GANESH'
		   ,1
		   ,'GURU'
		   ,'GANESH@EXAMPLE.COM')
GO

INSERT INTO [dbo].[Persons]
		   ([BusinessID]
		   ,[PersonName]
		   ,[RolesID]
		   ,[PersonLastName]
		   ,[Email])
	VALUES
		   (20
		   ,'HITEN'
		   ,1
		   ,'VYAS'
		   ,'HITEN@EXAMPLE.COM')
GO
SELECT [PersonID]
      ,[BusinessID]
      ,[PersonName]
      ,[RolesID]
      ,[PersonLastName]
      ,[Email]
  FROM [dbo].[Persons]
  ORDER BY [BusinessID] 
--OFFSET MEANS IT WILL BE REMOVE NUM
  OFFSET 3 ROWS
  FETCH NEXT 5 ROWS ONLY
GO

