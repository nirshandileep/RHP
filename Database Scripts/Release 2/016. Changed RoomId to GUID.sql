/*
   Thursday, April 23, 20151:57:59 AM
   User: 
   Server: .
   Database: RHP
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.[User]
	DROP CONSTRAINT FK_User_State
GO
ALTER TABLE dbo.State SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.State', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.State', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.State', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.BaseHouseRoom
	DROP CONSTRAINT FK_BaseHouseRoom_BaseHouse
GO
ALTER TABLE dbo.BaseHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_BaseHouseRoom
	(
	BaseHouseId int NOT NULL,
	RoomName nvarchar(250) NULL,
	Description nvarchar(250) NULL,
	CreatedBy nvarchar(50) NULL,
	CreatedDate datetime NULL,
	BaseHouseRoomId uniqueidentifier NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_BaseHouseRoom SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.BaseHouseRoom)
	 EXEC('INSERT INTO dbo.Tmp_BaseHouseRoom (BaseHouseId, RoomName, Description, CreatedBy, CreatedDate)
		SELECT BaseHouseId, RoomName, Description, CreatedBy, CreatedDate FROM dbo.BaseHouseRoom WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.House
	DROP CONSTRAINT FK_House_BaseHouseRoom
GO
ALTER TABLE dbo.[User]
	DROP CONSTRAINT FK_User_BaseHouseRoom
GO
DROP TABLE dbo.BaseHouseRoom
GO
EXECUTE sp_rename N'dbo.Tmp_BaseHouseRoom', N'BaseHouseRoom', 'OBJECT' 
GO
ALTER TABLE dbo.BaseHouseRoom ADD CONSTRAINT
	PK_BaseHouseRoom PRIMARY KEY CLUSTERED 
	(
	BaseHouseRoomId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.BaseHouseRoom ADD CONSTRAINT
	FK_BaseHouseRoom_BaseHouse FOREIGN KEY
	(
	BaseHouseId
	) REFERENCES dbo.BaseHouse
	(
	BaseHouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_House
	(
	HouseId uniqueidentifier NOT NULL,
	LandlordId uniqueidentifier NOT NULL,
	StreetAddress nvarchar(256) NULL,
	City nvarchar(256) NULL,
	StateId int NULL,
	Zip nvarchar(256) NULL,
	YearHomeBuild int NULL,
	BedRooms int NULL,
	BathRooms int NULL,
	LotSquareFootage int NULL,
	TotalSquareFootage int NULL,
	UtilitiesIncludedInRent nvarchar(256) NULL,
	PropertyImagePath nvarchar(MAX) NULL,
	IsDeleted bit NULL,
	CreatedBy uniqueidentifier NOT NULL,
	CreatedDate datetime NOT NULL,
	UpdatedBy uniqueidentifier NOT NULL,
	UpdatedDate datetime NOT NULL,
	RatingValue decimal(5, 2) NULL,
	Price decimal(10, 2) NULL,
	IsPartialHouse bit NULL,
	BaseHouseRoomId uniqueidentifier NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_House SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.House)
	 EXEC('INSERT INTO dbo.Tmp_House (HouseId, LandlordId, StreetAddress, City, StateId, Zip, YearHomeBuild, BedRooms, BathRooms, LotSquareFootage, TotalSquareFootage, UtilitiesIncludedInRent, PropertyImagePath, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, Price, IsPartialHouse)
		SELECT HouseId, LandlordId, StreetAddress, City, StateId, Zip, YearHomeBuild, BedRooms, BathRooms, LotSquareFootage, TotalSquareFootage, UtilitiesIncludedInRent, PropertyImagePath, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, Price, IsPartialHouse FROM dbo.House WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.House
	DROP CONSTRAINT FK_House_Landlord
GO
ALTER TABLE dbo.HouseOption
	DROP CONSTRAINT FK_HouseOption_House
GO
ALTER TABLE dbo.StudentHouse
	DROP CONSTRAINT FK_StudentHouse_House
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_House
GO
ALTER TABLE dbo.[User]
	DROP CONSTRAINT FK_User_House
GO
DROP TABLE dbo.House
GO
EXECUTE sp_rename N'dbo.Tmp_House', N'House', 'OBJECT' 
GO
ALTER TABLE dbo.House ADD CONSTRAINT
	PK_House PRIMARY KEY CLUSTERED 
	(
	HouseId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.House ADD CONSTRAINT
	FK_House_BaseHouseRoom1 FOREIGN KEY
	(
	BaseHouseRoomId
	) REFERENCES dbo.BaseHouseRoom
	(
	BaseHouseRoomId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.House', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_User
	(
	UserId uniqueidentifier NOT NULL,
	AspnetUserId uniqueidentifier NULL,
	IsPartialUser bit NULL,
	IsFBUser bit NULL,
	FBAccessToken nvarchar(MAX) NULL,
	FBUrl nvarchar(256) NULL,
	FBTokenTimeStamp timestamp NULL,
	FBProfilePictureURL nvarchar(256) NULL,
	StreetAddress nvarchar(256) NULL,
	City nvarchar(256) NULL,
	StateId int NULL,
	Zip nvarchar(256) NULL,
	DateOfBirth date NULL,
	BestContactNumber nvarchar(256) NULL,
	DriversLicenseNumber nvarchar(256) NULL,
	Status nvarchar(256) NULL,
	PersonalEmail nvarchar(256) NULL,
	IsDeleted bit NULL,
	CreatedBy uniqueidentifier NOT NULL,
	CreatedDate datetime NOT NULL,
	UpdatedBy uniqueidentifier NOT NULL,
	UpdatedDate datetime NOT NULL,
	RatingValue decimal(5, 2) NULL,
	FBid nvarchar(50) NULL,
	Gender nvarchar(10) NULL,
	FirstName nvarchar(100) NULL,
	MiddleName nvarchar(100) NULL,
	LastName nvarchar(100) NULL,
	HouseId uniqueidentifier NULL,
	RoleId uniqueidentifier NULL,
	ReferralCode varchar(10) NULL,
	BaseHouseRoomId uniqueidentifier NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_User SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.[User])
	 EXEC('INSERT INTO dbo.Tmp_User (UserId, AspnetUserId, IsPartialUser, IsFBUser, FBAccessToken, FBUrl, FBProfilePictureURL, StreetAddress, City, StateId, Zip, DateOfBirth, BestContactNumber, DriversLicenseNumber, Status, PersonalEmail, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, FBid, Gender, FirstName, MiddleName, LastName, HouseId, RoleId, ReferralCode)
		SELECT UserId, AspnetUserId, IsPartialUser, IsFBUser, FBAccessToken, FBUrl, FBProfilePictureURL, StreetAddress, City, StateId, Zip, DateOfBirth, BestContactNumber, DriversLicenseNumber, Status, PersonalEmail, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate, RatingValue, FBid, Gender, FirstName, MiddleName, LastName, HouseId, RoleId, ReferralCode FROM dbo.[User] WITH (HOLDLOCK TABLOCKX)')
GO
ALTER TABLE dbo.Landlord
	DROP CONSTRAINT FK_Landlord_User
GO
ALTER TABLE dbo.Spotlight
	DROP CONSTRAINT FK_Spotlight_User
GO
ALTER TABLE dbo.Student
	DROP CONSTRAINT FK_Student_User
GO
ALTER TABLE dbo.StudentHouse
	DROP CONSTRAINT FK_StudentHouse_Student
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_User
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_User1
GO
DROP TABLE dbo.[User]
GO
EXECUTE sp_rename N'dbo.Tmp_User', N'User', 'OBJECT' 
GO
ALTER TABLE dbo.[User] ADD CONSTRAINT
	PK_User PRIMARY KEY CLUSTERED 
	(
	UserId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[User] WITH NOCHECK ADD CONSTRAINT
	FK_User_House FOREIGN KEY
	(
	HouseId
	) REFERENCES dbo.House
	(
	HouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[User] WITH NOCHECK ADD CONSTRAINT
	FK_User_State FOREIGN KEY
	(
	StateId
	) REFERENCES dbo.State
	(
	StateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[User] ADD CONSTRAINT
	FK_User_BaseHouseRoom1 FOREIGN KEY
	(
	BaseHouseRoomId
	) REFERENCES dbo.BaseHouseRoom
	(
	BaseHouseRoomId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[User]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Student WITH NOCHECK ADD CONSTRAINT
	FK_Student_User FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Student SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Student', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Student', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Student', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Spotlight WITH NOCHECK ADD CONSTRAINT
	FK_Spotlight_User FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Spotlight SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Spotlight', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Spotlight', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Spotlight', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.House WITH NOCHECK ADD CONSTRAINT
	FK_House_Landlord FOREIGN KEY
	(
	LandlordId
	) REFERENCES dbo.Landlord
	(
	LandlordId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Landlord WITH NOCHECK ADD CONSTRAINT
	FK_Landlord_User FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Landlord SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Landlord', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.StudentHouseLeave WITH NOCHECK ADD CONSTRAINT
	FK_StudentHouseLeave_House FOREIGN KEY
	(
	HouseId
	) REFERENCES dbo.House
	(
	HouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouseLeave WITH NOCHECK ADD CONSTRAINT
	FK_StudentHouseLeave_User FOREIGN KEY
	(
	RequestBy
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouseLeave WITH NOCHECK ADD CONSTRAINT
	FK_StudentHouseLeave_User1 FOREIGN KEY
	(
	RequestTo
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouseLeave SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.StudentHouse WITH NOCHECK ADD CONSTRAINT
	FK_StudentHouse_House FOREIGN KEY
	(
	HouseId
	) REFERENCES dbo.House
	(
	HouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouse WITH NOCHECK ADD CONSTRAINT
	FK_StudentHouse_Student FOREIGN KEY
	(
	UserId
	) REFERENCES dbo.[User]
	(
	UserId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.StudentHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.StudentHouse', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.HouseOption WITH NOCHECK ADD CONSTRAINT
	FK_HouseOption_House FOREIGN KEY
	(
	HouseId
	) REFERENCES dbo.House
	(
	HouseId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.HouseOption SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.HouseOption', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.HouseOption', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.HouseOption', 'Object', 'CONTROL') as Contr_Per 