IF OBJECT_ID('usp_StudentHouseLeaveInsert') IS NOT NULL
	DROP PROC [dbo].[usp_StudentHouseLeaveInsert]
GO

CREATE PROC [dbo].[usp_StudentHouseLeaveInsert] 
    @HouseId uniqueidentifier,
    @BaseHouseRoomId uniqueidentifier,
    @RequestBy uniqueidentifier,
    @RequestTo uniqueidentifier,
    @status int = 0,
    @RequestDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	set @RequestDate = GETUTCDATE()
	
	INSERT INTO [dbo].[StudentHouseLeave]
           ([RequestBy]
           ,[RequestTo]
           ,[RequestDate]
           ,[status]
           ,[ResponseDate]
           ,[HouseId]
           ,[BaseHouseRoomId])
     VALUES
           (@RequestBy
           ,@RequestTo
           ,@RequestDate
           ,@status
           ,@RequestDate
           ,@HouseId
           ,@BaseHouseRoomId)

	COMMIT

