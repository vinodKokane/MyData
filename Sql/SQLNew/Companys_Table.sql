USE [My_Training_SQL]
GO
----------------------------------------------------------------------------

INSERT INTO [dbo].[Companys]
           ([CompnayName]
           ,[City]
           ,[State])
     VALUES
           ('Engross Infotech'
		   ,'Surat'
		   ,'Gujarat')
GO

----------------------------------------------------------------------------

INSERT INTO [dbo].[Companys]
           ([CompnayName]
           ,[City]
           ,[State])
     VALUES
           ('Upstox'
		   ,'Mumbai'
		   ,'Maharashtra')
GO
----------------------------------------------------------------------------
INSERT INTO [dbo].[Companys]
		   ([CompnayName]
		   ,[City]
		   ,[State])
	 VALUES	
		   ('ZERODHA'
		   ,'BANGALORE'
		   ,'KARNATAKA')
GO
----------------------------------------------------------------------------
SELECT [CompanyID]
	  ,[CompnayName]
	  ,[City]
	  ,[State]
  FROM [dbo].[Companys]
GO
----------------------------------------------------------------------------
