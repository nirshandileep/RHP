IF OBJECT_ID('usp_UserUpdateHouse') IS NOT NULL
	DROP PROC [dbo].[usp_UserUpdateHouse]
GO

CREATE PROC [dbo].[usp_UserUpdateHouse] 
    @UserId uniqueidentifier,
    @HouseId uniqueidentifier,
    @BaseHouseRoomId uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[User]
	SET  [HouseId] = @HouseId,
	[BaseHouseRoomId] = @BaseHouseRoomId,
	[UpdatedDate] = @UpdatedDate,
	[UpdatedBy] = @UserId
		
	WHERE  [UserId] = @UserId


	COMMIT

