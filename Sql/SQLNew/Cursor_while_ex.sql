--14. Create sp for  use cursor and while loop.
USE My_Training_SQL
GO

--@@FETCH_STATUS 
-- 0	The FETCH statement was successful.
---1	The FETCH statement failed or the row was beyond the result set.
---2	The row fetched is missing.
---9	The cursor is not performing a fetch operation.
-----------------------------------------------------
-------------FIRST DECLARE CURSOR--------------------
DECLARE MY_CURSOR CURSOR FOR

------------AND COPY ALL DATA IN CURSOR--------------
	SELECT [BusinessID]
		,[PersonName]
		,[PersonLastName]
		,[Email]
		,[CompanyName]
	FROM [dbo].[Persons]

-------------THEN OPEN CURSOR-----------------------
OPEN MY_CURSOR
-------------FETCH NEXT DATA FROM CURSOR------------
FETCH NEXT FROM MY_CURSOR
-------------USE WHILE LOOP-------------------------
-------------@@FETCH_STATUS=0 IT MEANS -------------
------------IT WILL BE SUCESSFULLY DONE-------------
------IT WILL BE -1 THAT MEANS FETCH FAILED----------

WHILE @@FETCH_STATUS =0
BEGIN
	FETCH NEXT FROM MY_CURSOR
END
---------------------CLOSE CURSOR--------------------
CLOSE MY_CURSOR
DEALLOCATE MY_CURSOR
GO
-------------------------------------------------------------

ALTER PROCEDURE Persons_Cursor_With_While
AS
BEGIN
	SET NOCOUNT ON
	------DECLARE MY_CURSOR-------
	DECLARE MY_CURSOR CURSOR FOR
		SELECT [BusinessID]
		,[PersonName]
		,[PersonLastName]
		,[Email]
		,[CompanyName]
	FROM [dbo].[Persons]

	-------OPEN CURSOR-------
	OPEN MY_CURSOR

	-----FETCH NEXT DATA FROM MY_CURSOR--------
	FETCH NEXT FROM MY_CURSOR

	----CHECK FETCH STATUS IS 0 OR NOT--------- 
	WHILE @@FETCH_STATUS =0
	BEGIN
		FETCH NEXT FROM MY_CURSOR
	END

	----CLOSE THE MY_CURSOR----
	CLOSE MY_CURSOR

	-------REMOVE CURSOR-------
	DEALLOCATE MY_CURSOR
END
GO
----------------------------------------------------
EXEC Persons_Cursor_With_While
GO