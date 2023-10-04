USE My_Training_SQL
GO
---------------------------------------------------
------------- FIRST CREATE ONE TABLE -------------

CREATE TABLE Orders
(
	OrderID INT
   ,OrderDescription VARCHAR(100)
   ,Amount DEC(6,2)
)

---------------------------------------------------
--------------- CREATE 'TYPE' TABLE -------------
CREATE TYPE OrderTypes AS TABLE
(
	OrderID INT
   ,OrderDescription VARCHAR(100)
   ,Amount DEC(6,2)
)
---------------------------------------------------
--------------- CREATE 'SP' TABLE -------------
CREATE PROCEDURE Orders_Insert
	@OrdersDetails [dbo].OrderTypes READONLY
	AS
	BEGIN
		INSERT INTO Orders([OrderID]
			,[OrderDescription]
			,[Amount])
		SELECT [OrderID]
			,[OrderDescription]
			,[Amount] 
		FROM @OrdersDetails
END

---------------------------------------------------
--------------- 'PASS DATA INTO' TABLE -------------
DECLARE @OrderVariable As [dbo].OrderTypes
INSERT INTO @OrderVariable([OrderID]
	,[OrderDescription]
	,[Amount])
VALUES(
	4
	,'USB'
	,500.00
	)
INSERT INTO @OrderVariable([OrderID]
	,[OrderDescription]
	,[Amount])
VALUES(
	5
	,'BLUETOOTH'
	,750.00
	)
EXEC Orders_Insert @OrderVariable
GO
---------------------------------------------------

