﻿-- =============================================
-- Author:		<Author,,Jeanneth Mota>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_IM_ROL] (
   @RolIntdId   UNIQUEIDENTIFIER ,
    @RolName  VARCHAR(50)
	
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   BEGIN TRANSACTION

    BEGIN TRY

	  IF NOT EXISTS (SELECT * FROM CAT_ROLE WHERE ROL_INT_ID = @RolIntdId)
	  BEGIN

			INSERT INTO [dbo].[CAT_ROLE]
			   (
					[ROL_INT_ID]
				   ,[ROL_NAME]
			   )
			 VALUES
			   (
					NEWID(),
					@RolName
			   )

		END
        ELSE
		   BEGIN
				UPDATE CAT_ROLE
				SET ROL_NAME = @RolName
			  WHERE ROL_INT_ID = @RolIntdId

		  END

   COMMIT TRANSACTION

   END TRY
   BEGIN CATCH
        ROLLBACK TRANSACTION 

    END CATCH
END