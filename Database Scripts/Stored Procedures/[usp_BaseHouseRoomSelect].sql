IF OBJECT_ID('usp_BaseHouseRoomSelect') IS NOT NULL
	DROP PROC [dbo].[usp_BaseHouseRoomSelect]
GO


CREATE PROC [dbo].[usp_BaseHouseRoomSelect] 
    @BaseHouseRoomId uniqueidentifier
AS 

	SELECT * 
	FROM dbo.BaseHouseRoom
	WHERE  (BaseHouseRoomId = @BaseHouseRoomId OR @BaseHouseRoomId IS NULL)
	ORDER BY RoomName