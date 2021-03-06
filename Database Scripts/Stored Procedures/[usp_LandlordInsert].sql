IF OBJECT_ID('usp_LandlordInsert') IS NOT NULL
	DROP PROC [dbo].[usp_LandlordInsert]
GO

CREATE PROC [dbo].[usp_LandlordInsert] 
    @LandlordId uniqueidentifier,
    @UserId uniqueidentifier,
    @LandlordName nvarchar(256) = NULL,
    @IsDeleted bit = NULL,
    @CreatedBy uniqueidentifier,
    @LandlordTypeId int,
    @CreatedDate datetime output
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	SET @CreatedDate = GETUTCDATE() 
	
	INSERT INTO [dbo].[Landlord] ([LandlordId], 
	[UserId], 
	[LandlordName], 
	[IsDeleted], 
	[CreatedBy], 
	[CreatedDate], 
	[UpdatedBy], 
	[UpdatedDate],
	[LandlordTypeId])
	
	SELECT @LandlordId, 
	@UserId, 
	@LandlordName, 
	@IsDeleted, 
	@CreatedBy, 
	@CreatedDate, 
	@CreatedBy, 
	@CreatedDate,
	@LandlordTypeId
	
	COMMIT

