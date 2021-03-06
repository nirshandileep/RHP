/****** Object:  StoredProcedure [dbo].[usp_HouseSelect]    Script Date: 03/29/2015 16:35:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSelect] 
    @HouseId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	SELECT 
		[HouseId], 
		[LandlordId], 
		[StreetAddress], 
		[City], 
		[StateId] , 
		[Zip], 
		[YearHomeBuild], 
		[BedRooms], 
		[BathRooms], 
		[LotSquareFootage], 
		[TotalSquareFootage],
		[UtilitiesIncludedInRent], 
		[PropertyImagePath], 
		[IsDeleted], 
		[CreatedBy], 
		[CreatedDate], 
		[UpdatedBy], 
		[UpdatedDate], 
		[RatingValue], 
		[Price] ,
		[IsPartialHouse], 
		[HouseTypeId]
	FROM   [dbo].[House] 
	WHERE  ([HouseId] = @HouseId OR @HouseId IS NULL) 

	SELECT [HouseOptionId], [HouseId], [OptionId], [OptionValue], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate] 
	FROM   [dbo].[HouseOption] 
	WHERE  ([HouseId] = @HouseId OR @HouseId IS NULL)

