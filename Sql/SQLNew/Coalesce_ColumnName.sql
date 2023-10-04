--6. Create sp for Get company data in folliwing way using stuff and collease function

--ID  CompanyName   Users
--1     ABC         rachana,ashish
--2     PQR		    chintan,hiren
---------------------------------------------------------

USE [My_Training_SQL]
GO
---------------------------------------------------------
INSERT INTO Students
VALUES
	(
	1
	,'VINOD'
	,'KOKANE'
	,'8079098989'
	,'45758'
	)
GO
---------------------------------------------------------

ALTER TABLE Students ADD CompanyName VARCHAR(50)
GO
---------------------------------------------------------

SELECT DISTINCT[ID],
[CompanyName],
STUFF((SELECT ','+FirstName 
		FROM Students b 
		WHERE a.CompanyName = b.CompanyName 
		FOR XML PATH('')),1,1,'') FirstName
FROM Students a
---------------------------------------------------------
--pending
SELECT * FROM Students
GO

---------------------------------------------------------
------HERE WE USE DISTINCT MEANS UNIQUE COMPANY NAME
--(1)--
--SELECT DISTINCT [ID]
--,[CompanyName]
----(2)--THEN USE STUFF 
--,STUFF((SELECT ','+[FirstName]

--		--(3)--GIVES ALIAS 

--		FROM [Students] as b 
		
--		--(4)-- ON CONDITION WHERE BOTH COMPANY ARE SAME

--		WHERE a.CompanyName = b.CompanyName 

--		--(5)--HERE WE USE XML PATH DUE TO HANDLE MULTIPLE COLUMN DATA AT ONCE
--		--AND 1,1 IT MEANS ONE COLUMN UP TO 1 COLUMN START POINT AND END POINT
--		-- '' THAT IS FOR NOTHING TO REPLACE ON THAT POSITION 

--		FOR XML PATH('')),1,1,'')[FirstName]

--FROM Students as a
--GO
-------------------------------------------------

ALTER PROCEDURE Students_GetData 
AS
BEGIN
	SET NOCOUNT ON 
	SELECT DISTINCT[ID],
	[CompanyName],
	STUFF((SELECT ','+[FirstName] 
			FROM [dbo].[Students] AS b 
			WHERE a.[CompanyName] = b.[CompanyName]
			FOR XML PATH('')),1,1,'') AS FirstName
	FROM [dbo].[Students] AS a
END

--------------------------------------------------------
EXEC Students_GetData 
GO