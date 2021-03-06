IF OBJECT_ID('usp_StudentHouseLeaveUpdate') IS NOT NULL
	DROP PROC [dbo].[usp_StudentHouseLeaveUpdate]
GO

CREATE PROC [dbo].[usp_StudentHouseLeaveUpdate] 
    @HouseId uniqueidentifier,
    @BaseHouseRoomId uniqueidentifier,
    @RequestBy uniqueidentifier,
    @RequestTo uniqueidentifier,
    @status int = 0,
    @ResponseDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @ResponseDate = GETUTCDATE()
	
	UPDATE [dbo].[StudentHouseLeave]
	SET 
      [status] = @status
      ,[ResponseDate] = @ResponseDate
	WHERE [RequestBy] = @RequestBy and [RequestTo] = @RequestTo and ([HouseId] = @HouseId or [BaseHouseRoomId]=@BaseHouseRoomId)
	
	COMMIT

