--Create sp for insert-update using merge

--FIRST CREATE TWO TABLES FOR MERGE
CREATE TABLE USERS_1
(
	ID INT PRIMARY KEY
	,UserName VARCHAR(50)
	,City VARCHAR(50)
)
GO
CREATE TABLE USERS_2
(
	ID INT PRIMARY KEY
	,UserName VARCHAR(50)
	,City VARCHAR(50)
	,Phone VARCHAR(10)
	,Email VARCHAR(50)

)
GO

INSERT INTO USERS_2
	([ID]
	,[UserName]
	,[City]
	,[Phone]
	,[Email])
VALUES
	(1
	,'VIN'
	,'NAS'
	,'9190100'
	,'VIN@EXAMPLE.COM'),
	(2
	,'NE'
	,'SUR'
	,'898989'
	,'NE@EXAMPLE.COM'),
	(3
	,'PRI'
	,'SUR'
	,'97898'
	,'PRI@EXAMPLE.COM'),
	(4
	,'KEV'
	,'SUR'
	,'787878'
	,'KEV@EXAMPLE.COM')
GO

SELECT * FROM USERS_1
SELECT * FROM USERS_2
GO
--------------------------------------------
MERGE USERS_1 TAB1
USING USERS_2 TAB2
ON TAB1.ID =TAB2.ID

WHEN NOT MATCHED BY TARGET THEN 
	INSERT([ID],[UserName],[City])
		VALUES(TAB2.ID,TAB2.UserName,TAB2.City)
WHEN MATCHED THEN
	UPDATE
		SET TAB1.UserName =TAB2.UserName;
GO
------------------------------------------------------

CREATE PROCEDURE INSERT_UPDATE
	AS
	BEGIN
		MERGE USERS_1 TAB1
		USING USERS_2 TAB2
		ON TAB1.ID =TAB2.ID
		WHEN NOT MATCHED BY TARGET THEN 
			INSERT([ID],[UserName],[City])
				VALUES(TAB2.ID,TAB2.UserName,TAB2.City)
		WHEN MATCHED THEN
			UPDATE
				SET TAB1.UserName =TAB2.UserName;		
	END
GO
----------------------------------------------------
EXEC INSERT_UPDATE
GO
----------------------------------------------------
