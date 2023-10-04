------------13. Create sp using rank, partition by etc--------
USE My_Training_SQL
GO
---------------------------------------------------------------

SELECT [ProductID]
      ,[ProductName]
      ,[Discount]
      ,[Price]
  FROM [dbo].[Products]

GO
---------------------------------------------------------------
SELECT [ProductID]
	,[ProductName]
	,[Discount]
	,[Price]
	,RANK() OVER (PARTITION BY [Discount]
			ORDER BY [ProductName]) AS RANK
FROM [dbo].[Products]
GO
---------------------------------------------------------------
---------------------store procedure---------------------------
CREATE PROCEDURE Products_rank_partionBy @Discount INT
AS
BEGIN
	SET NOCOUNT ON
	SELECT [ProductID]
	,[ProductName]
	,[Discount]
	,[Price]
	,RANK() OVER (PARTITION BY @Discount
			ORDER BY [ProductName]) AS RANK
FROM [dbo].[Products]
END

------------------------------------------------------------
----TAKE ONE VARIABLE
DECLARE @Dis int

---GET ALL VALUES IN THAT VARIABLE
SELECT @Dis =[Discount] FROM Products

--EXECUTE SP
EXEC Products_rank_partionBy @Discount=@Dis 
GO
------------------------------------------------------------
  