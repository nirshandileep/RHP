/*
   Sunday, April 26, 20159:11:09 PM
   User: centrilla
   Server: centrilladb2008.czegvmfnsctg.ap-southeast-1.rds.amazonaws.com,1433
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
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_BaseHouseRoom
GO
ALTER TABLE dbo.BaseHouseRoom SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouseRoom', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_User
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_User1
GO
ALTER TABLE dbo.[User] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[User]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[User]', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.StudentHouseLeave
	DROP CONSTRAINT FK_StudentHouseLeave_House
GO
ALTER TABLE dbo.House SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.House', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_StudentHouseLeave
	(
	RequestID int NOT NULL IDENTITY (1, 1),
	RequestBy uniqueidentifier NOT NULL,
	RequestTo uniqueidentifier NOT NULL,
	RequestDate datetime NOT NULL,
	status int NOT NULL,
	ResponseDate datetime NULL,
	HouseId uniqueidentifier NULL,
	BaseHouseRoomId uniqueidentifier NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_StudentHouseLeave SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_StudentHouseLeave ON
GO
IF EXISTS(SELECT * FROM dbo.StudentHouseLeave)
	 EXEC('INSERT INTO dbo.Tmp_StudentHouseLeave (RequestID, RequestBy, RequestTo, RequestDate, status, ResponseDate, HouseId, BaseHouseRoomId)
		SELECT RequestID, RequestBy, RequestTo, RequestDate, status, ResponseDate, HouseId, BaseHouseRoomId FROM dbo.StudentHouseLeave WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_StudentHouseLeave OFF
GO
DROP TABLE dbo.StudentHouseLeave
GO
EXECUTE sp_rename N'dbo.Tmp_StudentHouseLeave', N'StudentHouseLeave', 'OBJECT' 
GO
ALTER TABLE dbo.StudentHouseLeave ADD CONSTRAINT
	PK_StudentHouseLeave PRIMARY KEY CLUSTERED 
	(
	RequestID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

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
ALTER TABLE dbo.StudentHouseLeave ADD CONSTRAINT
	FK_StudentHouseLeave_BaseHouseRoom FOREIGN KEY
	(
	BaseHouseRoomId
	) REFERENCES dbo.BaseHouseRoom
	(
	BaseHouseRoomId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.StudentHouseLeave', 'Object', 'CONTROL') as Contr_Per 