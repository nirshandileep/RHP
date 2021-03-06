IF OBJECT_ID('usp_UserUpdate') IS NOT NULL
	DROP PROC [dbo].[usp_UserUpdate]
GO

CREATE PROC [dbo].[usp_UserUpdate] 
    @UserId uniqueidentifier,
    @IsFBUser bit = NULL,
    @AspnetUserId uniqueidentifier,
     @IsPartialUser bit = NULL,
    @FBAccessToken nvarchar(MAX) = NULL,
    @FBUrl nvarchar(256) = NULL,
    @FBProfilePictureURL nvarchar(256) = NULL,
    @FirstName nvarchar(100) = NULL, 
	@MiddleName nvarchar(100) = NULL,
	@LastName nvarchar(100) = NULL,
    @StreetAddress nvarchar(256) = NULL,
    @City nvarchar(256) = NULL,
    @StateId int = NULL,
    @Zip nvarchar(256) = NULL,
    @DateOfBirth date = NULL,
    @BestContactNumber nvarchar(256) = NULL,
    @DriversLicenseNumber nvarchar(256) = NULL,
    @Status nvarchar(256) = NULL,
    @PersonalEmail nvarchar(256) = NULL,
    @UpdatedBy uniqueidentifier,
    @LastUpdatedDate datetime,
    @RatingValue decimal(5, 2) = NULL,
    @Gender nvarchar(50) = NULL,
    @HouseId uniqueidentifier,
    @RoleId uniqueidentifier,
    @BaseHouseRoomId uniqueidentifier,
	@UpdatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	IF ((select UpdatedDate from [User] where UserId = @UserId) <> @LastUpdatedDate)
	BEGIN
		print 'This record has been updated by someone else!'
	END

	set @UpdatedDate = GETUTCDATE()

	UPDATE [dbo].[User]
	SET    
		[IsFBUser] = @IsFBUser, 
		[FBAccessToken] = @FBAccessToken, 
		[AspnetUserId] = @AspnetUserId,
      [IsPartialUser] = @IsPartialUser,
		[FBUrl] = @FBUrl, 
		[FBProfilePictureURL] = @FBProfilePictureURL, 
		[FirstName] = @FirstName, 
		[MiddleName] = @MiddleName, 
		[LastName] = @LastName, 
		[StreetAddress] = @StreetAddress, 
		[City] = @City, 
		[StateId] = @StateId, 
		[Zip] = @Zip, 
		[DateOfBirth] = @DateOfBirth, 
		[BestContactNumber] = @BestContactNumber, 
		[DriversLicenseNumber] = @DriversLicenseNumber, 
		[Status] = @Status, 
		[PersonalEmail] = @PersonalEmail, 
		[UpdatedBy] = @UpdatedBy, 
		[UpdatedDate] = @UpdatedDate, 
		[RatingValue] = @RatingValue,
		[Gender] =  @Gender,
		[HouseId] = @HouseId,
		[RoleId] = @RoleId,
		[BaseHouseRoomId] = @BaseHouseRoomId
	--	[ReferralCode] = @ReferralCode
		
	WHERE  [UserId] = @UserId


	COMMIT

