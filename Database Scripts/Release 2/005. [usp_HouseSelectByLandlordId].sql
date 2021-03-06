/****** Object:  StoredProcedure [dbo].[usp_HouseSelectByLandlordId]    Script Date: 03/29/2015 16:38:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[usp_HouseSelectByLandlordId]
    @LandlordId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [HouseId], 
		[LandlordId], 
		[StreetAddress], 
		[City],  
		(SELECT [StateName] FROM [dbo].[State] where [StateId] =  [dbo].[House] .[StateId]) AS state , 
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
		[RatingValue] ,
		[Price],
		HouseTypeId
	FROM   [dbo].[House] 
	WHERE  ([LandlordId] = @LandlordId OR @LandlordId IS NULL) 

	COMMIT

