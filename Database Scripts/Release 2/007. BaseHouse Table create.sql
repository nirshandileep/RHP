/*
   Friday, April 17, 20158:40:37 AM
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
CREATE TABLE dbo.BaseHouse
	(
	BaseHouseId int NOT NULL,
	ContactName nvarchar(100) NOT NULL,
	HouseTypeId int NOT NULL,
	Name nvarchar(250) NOT NULL,
	Address nvarchar(250) NULL,
	PhoneNumber nvarchar(50) NULL,
	ManagerEmail nvarchar(150) NULL,
	AssistantManagerEmail nvarchar(150) NULL,
	PropertyManagementCompanyName nvarchar(150) NULL,
	WebSiteURL nvarchar(500) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.BaseHouse ADD CONSTRAINT
	PK_BaseHouse PRIMARY KEY CLUSTERED 
	(
	BaseHouseId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.BaseHouse SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaseHouse', 'Object', 'CONTROL') as Contr_Per 