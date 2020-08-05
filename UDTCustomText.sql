IF TYPE_ID(N'UDTCustomText') IS NULL
BEGIN
	CREATE TYPE UDTCustomText AS TABLE  
	(  
		[LineNo] smallint PRIMARY KEY,  
		LineText NVARCHAR(1500)
	)  
END
