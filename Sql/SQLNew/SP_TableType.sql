--7. Create sp for Get User Data and restore into other table using table type

USE My_Training_SQL
GO
-------------------------------------------------------------------------------
-------------1ST STEP CREATE TABLE --------------------
CREATE TABLE UsersData
(
	UserID INT PRIMARY KEY
	,UserName VARCHAR(50)
	,City VARCHAR(50)
)
GO
-------------2ND STEP CREATE TYPE TABLE --------------------

CREATE TYPE UserData_Tab AS Table
(
	UserID INT PRIMARY KEY
	,UserName VARCHAR(50)
	,City VARCHAR(50)
)
GO
-------------3rd STEP CREATE SP --------------------

CREATE PROCEDURE UsersData_INSERT 
	@UserDetails [dbo].UserData_Tab READONLY
	AS
	BEGIN
		SET NOCOUNT ON
		INSERT INTO UsersData([UserID],[UserName],[City])
		SELECT [UserID],[UserName],[City] FROM @UserDetails
	END
-------------4th STEP PASS DATA --------------------

DECLARE @UserDataNew AS UserData_Tab
INSERT INTO 
	@UserDataNew(
	[UserID]
	,[UserName]
	,[City]) 
VALUES
	(2
	,'V'
	,'N')
EXEC  dbo.UsersData_INSERT @UserDataNew
GO
-------------------------------------------------------------
SELECT * FROM UsersData
GO
-------------------------------------------------------------
