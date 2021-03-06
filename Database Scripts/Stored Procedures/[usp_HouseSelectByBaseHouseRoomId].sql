IF OBJECT_ID('usp_HouseSelectByBaseHouseRoomId') IS NOT NULL
	DROP PROC [dbo].[usp_HouseSelectByBaseHouseRoomId]
GO



CREATE PROC [dbo].[usp_HouseSelectByBaseHouseRoomId] 
    @BaseHouseRoomId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT [HouseId], [LandlordId], [StreetAddress], [City], [StateId] , [Zip], [YearHomeBuild], [BedRooms], [BathRooms], [LotSquareFootage], [TotalSquareFootage],[UtilitiesIncludedInRent], [PropertyImagePath], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [Price] ,[IsPartialHouse]
	FROM   [dbo].[House] 
	WHERE  (BaseHouseRoomId = @BaseHouseRoomId OR @BaseHouseRoomId IS NULL) 

