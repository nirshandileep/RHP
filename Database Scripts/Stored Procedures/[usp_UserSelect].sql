IF OBJECT_ID('usp_UserSelect') IS NOT NULL
	DROP PROC [dbo].[usp_UserSelect]
GO

CREATE PROC [dbo].[usp_UserSelect] 
    @UserId uniqueidentifier
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [UserId], 
	[IsFBUser], 
	[AspnetUserId],
      [IsPartialUser],
	[FBAccessToken], 
	[FBUrl], 
	[FBTokenTimeStamp], 
	[FBProfilePictureURL],
	[FirstName],
    [MiddleName],
    [LastName],
	 [StreetAddress], 
	 [City], 
	 [StateId],
	  [Zip], 
	  [DateOfBirth], 
	  [BestContactNumber], 
	  [DriversLicenseNumber], 
	  [Status],
	   [PersonalEmail], 
	   [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [RatingValue], [FBid],[Gender],[HouseId],[RoleId],[ReferralCode]
	,[BaseHouseRoomId]
	FROM   [dbo].[User] 
	WHERE  ([UserId] = @UserId OR @UserId IS NULL) 

	COMMIT

