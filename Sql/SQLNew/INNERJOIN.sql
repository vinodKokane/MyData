USE [My_Training_SQL]
GO

SELECT [CustomerID]
      ,[Customer_Name]
      ,[Customer_Address]
      ,[Customer_Email]
  FROM [dbo].[Customers]

GO
--------------------------------------------------
SELECT [OrderID]
      ,[OrderDate]
      ,[OrderAmount]
      ,[CustomerID]
  FROM [dbo].[Customers_Orders]

GO
------------------------------------------------------------
--------------------INNER JOIN------------------------------
SELECT [Customers].[CustomerID]
      ,[Customers].[Customer_Name]
      ,[Customers].[Customer_Address]
	  ,[Customers_Orders].[OrderDate]
	  ,[Customers_Orders].[OrderAmount]
	FROM [dbo].[Customers]
	JOIN [dbo].[Customers_Orders]
	ON [Customers].[CustomerID]=[Customers_Orders].[CustomerID]
GO
