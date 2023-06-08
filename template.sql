SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
	-- Add the parameters for the stored procedure here
	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @proc_name nvarchar(200)

	-- try
	BEGIN TRY
	BEGIN TRANSACTION;
		
		/* logic */

	COMMIT TRANSACTION;
	END TRY

	-- catch
    BEGIN CATCH
		-- XACT_STATE() => -1 : error block commit
		BEGIN
			IF ( XACT_STATE() ) <> 0
				ROLLBACK TRANSACTION;
		END
	END CATCH

END
GO
