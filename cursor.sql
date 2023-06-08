-- encoding : EUC-KR

-- variable in cursor
DECLARE @NAME VARCHAR(20), @AGE SMALLINT

DECLARE CUR CURSOR FOR -- declare cursor - cursor name : cur

SELECT NAME, AGE FROM EXAMPLE -- select table

OPEN CUR -- cursor open, start
FETCH NEXT FROM CUR INTO @NAME, @AGE -- assign variable <- select table

-- forEach, read row 1
WHILE @@FETCH_STATUS = 0 -- if True => loop
BEGIN
	UPDATE EXAMPLE 
	SET AGE = @AGE + 2
	WHERE NAME = @NAME

	-- assign variable <- next row
	FETCH NEXT FROM CUR INTO @NAME, @AGE
END

-- cursor close
CLOSE CUR
DEALLOCATE CUR