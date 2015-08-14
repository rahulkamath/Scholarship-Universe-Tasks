/*
Stored procedure to delete all records from all tables within the current database using a cursor
*/
CREATE PROCEDURE sp_delete_all_records
AS
BEGIN
DECLARE cur CURSOR FOR
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;
DECLARE @val NVARCHAR(MAX);
OPEN cur
FETCH NEXT FROM cur INTO @val

WHILE (@@FETCH_STATUS = 0)
BEGIN
	DECLARE @statement NVARCHAR(200);
	SET @statement = 'DELETE FROM ' + @val;
	print @statement
	execute sp_executesql @statement;
	FETCH NEXT FROM cur INTO @val
	END
CLOSE cur
DEALLOCATE cur
END
